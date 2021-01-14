#ifndef AUDIO_PIPELINE_HPP
#define AUDIO_PIPELINE_HPP

#include <gst/gst.h>
//#include <pulse/pulseaudio.h>

#include <memory>

namespace AudioPipeline {

class Pipeline {
public:
    ~Pipeline();

    explicit Pipeline(const Pipeline&) = delete;
    explicit Pipeline(Pipeline&&) = delete;

    Pipeline& operator=(const Pipeline&) = default;
    Pipeline& operator=(Pipeline&&) = default;

    static std::unique_ptr<Pipeline> create(
        const std::string& fileName, int32_t argc, char* const argv[]);

    void pause();
    void play();
    void changeSource(const std::string& fileName);

    GstElement* pipeline()
    {
        return m_pipeline;
    }

    GstElement* source()
    {
        return m_source;
    }

    GstElement* convert()
    {
        return m_convert;
    }
    GstElement* resample()
    {
        return m_resample;
    }
    GstElement* sink()
    {
        return m_sink;
    }

private:
    Pipeline(const std::string& fileName, int32_t argc, char* const argv[]);
    void deletePipeline();
    void moveToState(GstState state);

private:
    GstElement* m_pipeline{nullptr};
    GstElement* m_source{nullptr};
    GstElement* m_convert{nullptr};
    GstElement* m_resample{nullptr};
    GstElement* m_sink{nullptr};
};

} // namespace AudioPipeline

#endif // AUDIO_PIPELINE_HPP
