rm a.out && g++ main.cpp AudioPipeline.cpp $(pkg-config --libs --cflags gstreamer-1.0) -lpthread -lstdc++fs -std=c++17 && ./a.out 

