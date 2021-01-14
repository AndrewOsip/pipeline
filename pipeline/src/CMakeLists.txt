cmake_minimum_required(VERSION 3.8)

set(PR_NAME tst_app)
set(PR_VERSION 0.0.0.1)

project(${PR_NAME} VERSION ${PR_VERSION} LANGUAGES C CXX)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GSTLIBS REQUIRED
    gobject-2.0
    glib-2.0
    gstreamer-check-1.0
    gstreamer-1.0
    )
#message(STATUS "Next message will be gstreamer includes")
#message(STATUS ${GSTLIBS_INCLUDE_DIRS})
include_directories(${GSTLIBS_INCLUDE_DIRS})

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -g")

set (HEADERS
    ./AudioPipeline.hpp
    )

set(SRC 
    ./main.cpp
    ./AudioPipeline.cpp
    )

add_executable(${PROJECT_NAME} ${HEADERS} ${SRC})

target_link_libraries (
    ${PROJECT_NAME}
    pthread
    gstreamer-1.0
    glib-2.0
    gobject-2.0
    pulse-simple
    pulse
#    gstpulseaudio
    )

set(TARGETS_DIR "/home/root/")
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${TARGETS_DIR})
