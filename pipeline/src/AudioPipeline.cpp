#include "AudioPipeline.hpp"

#include <unistd.h>

#include <iostream>
#include <sstream>

namespace {
void pad_added_handler(GstElement* /*src*/, GstPad* new_pad, AudioPipeline::Pipeline* data)
{
    GstPad* sink_pad = gst_element_get_static_pad(data->convert(), "sink");
    if (gst_pad_is_linked(sink_pad)) {
        gst_object_unref(sink_pad);
    }
    GstCaps* new_pad_caps = gst_pad_get_current_caps(new_pad);
    GstStructure* new_pad_struct = gst_caps_get_structure(new_pad_caps, 0);
    const gchar* new_pad_type = gst_structure_get_name(new_pad_struct);
    if (!g_str_has_prefix(new_pad_type, "audio/x-raw")) {
        if (new_pad_caps != NULL) {
            gst_caps_unref(new_pad_caps);
        }
        gst_object_unref(sink_pad);
    }

    GstPadLinkReturn ret = gst_pad_link(new_pad, sink_pad);
    if (GST_PAD_LINK_FAILED(ret)) {
        throw(std::runtime_error("Link failed."));
    }

    if (new_pad_caps != NULL) {
        gst_caps_unref(new_pad_caps);
    }
    gst_object_unref(sink_pad);
}

} // namespace

#include <iostream>

AudioPipeline::Pipeline::Pipeline(const std::string& fileName, int32_t argc, char* const argv[])
{
    gst_init(&argc, const_cast<char***>(&argv));
    m_source = gst_element_factory_make("uridecodebin", "source");
    m_convert = gst_element_factory_make("audioconvert", "convert");
    m_resample = gst_element_factory_make("audioresample", "resample");
    m_sink = gst_element_factory_make("pulsesink", "sink");
    m_pipeline = gst_pipeline_new("audio-pipeline");

    if (m_pipeline || m_source || m_convert || m_resample || m_sink) {
        gst_bin_add_many(GST_BIN(m_pipeline), m_source, m_convert, m_resample, m_sink, nullptr);
        if (!gst_element_link_many(m_convert, m_resample, m_sink, nullptr)) {
            deletePipeline();
        }
        g_object_set(m_source, "uri", fileName.c_str(), nullptr);

        g_signal_connect(this->source(), "pad-added", G_CALLBACK(pad_added_handler), this);
    } else {
        deletePipeline();
        throw(std::runtime_error("object could not be created.\n"));
    }

    auto propsName = gst_structure_from_string("props,application.name=player", nullptr);
    g_object_set(m_sink, "client-name", propsName, nullptr);
    auto propsRole = gst_structure_from_string("props,media.role=music", nullptr);
    g_object_set(m_sink, "stream-properties", propsRole, nullptr);

    moveToState(GST_STATE_PLAYING);
}

AudioPipeline::Pipeline::~Pipeline()
{
    deletePipeline();
}

std::unique_ptr<AudioPipeline::Pipeline> AudioPipeline::Pipeline::create(
    const std::string& fileName, int32_t argc, char* const argv[])
{
    std::unique_ptr<AudioPipeline::Pipeline> ptr;
    ptr.reset(new AudioPipeline::Pipeline(fileName, argc, argv));
    return ptr;
}

void AudioPipeline::Pipeline::pause()
{
    moveToState(GST_STATE_PAUSED);
}

void AudioPipeline::Pipeline::play()
{
    moveToState(GST_STATE_PLAYING);
}

void AudioPipeline::Pipeline::deletePipeline()
{
    if (m_pipeline) {
        gst_element_set_state(m_pipeline, GST_STATE_NULL);
        gst_object_unref(m_pipeline);
    }
}

void AudioPipeline::Pipeline::moveToState(GstState state)
{
    gst_element_set_state(m_pipeline, state);
    while (gst_element_get_state(m_pipeline, NULL, NULL, GST_CLOCK_TIME_NONE)
           != GST_STATE_CHANGE_SUCCESS) {
    }
}

void AudioPipeline::Pipeline::changeSource(const std::string& fileName)
{
    moveToState(GST_STATE_NULL);
    gst_element_unlink(m_source, m_pipeline);
    g_object_set(m_source, "uri", fileName.c_str(), nullptr);
    gst_element_link(m_source, m_pipeline);
    moveToState(GST_STATE_PLAYING);
}
