#include "AudioPipeline.hpp"

#include <assert.h>
//#include <gst/audio/gstaudiostreamalign.h>
#include <pulse/pulseaudio.h>
#include <stdio.h>

#include <fstream>
#include <iostream>
#include <string>

int main(int argc, char* argv[])
{
    auto pipe = AudioPipeline::Pipeline::create("file:///home/andrew/Downloads/pipeline/src/wrong.mp3", argc, argv);

    bool done = false;
    std::string input;
    std::string uri;
    while (!done) {
        std::cout << "Enter Command: ";
        std::getline(std::cin, input);
        if (input == "quit") {
            done = true;
        } else if (input == "help") {
            std::cout << "\nCommand List:\n"
                      << "pause\n"
                      << "play\n"
                      << "help: Display this help text\n"
                      << "quit: Exit the program\n"
                      << std::endl;
        } else if (input == "pause") {
            pipe->pause();
            std::cout << "> The state is PAUSED! " << std::endl;
        } else if (input == "play") {
            pipe->play();
            std::cout << "> The state is PLAYING! " << std::endl;
        } else if (input == "next") {
            std::cout << "Enter URI: ";
            std::string selectedFile;
            std::getline(std::cin, uri);
            if (uri == "1") {
                selectedFile = "/link2.mp3";
            } else if (uri == "2") {
                selectedFile = "/wrong.mp3";
            }
            if (!selectedFile.empty()) {
                pipe->changeSource("file://" + selectedFile);
                std::cout << "Audio file CHANGED! " << std::endl;
            } else {
                std::cout << "Wrong URI, or wrong path. " << std::endl;
            }
        } else {
            std::cout << "> Unrecognized Command" << std::endl;
        }
    }
    return 0;
}
