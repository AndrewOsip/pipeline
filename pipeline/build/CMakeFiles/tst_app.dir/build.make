# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/cmake

# The command to remove a file.
RM = /opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/avosipov/Desktop/draft/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/avosipov/Desktop/draft/build

# Include any dependencies generated for this target.
include CMakeFiles/tst_app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tst_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tst_app.dir/flags.make

CMakeFiles/tst_app.dir/main.cpp.o: CMakeFiles/tst_app.dir/flags.make
CMakeFiles/tst_app.dir/main.cpp.o: /home/avosipov/Desktop/draft/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/avosipov/Desktop/draft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tst_app.dir/main.cpp.o"
	/opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/x86_64-mbient-linux/x86_64-mbient-linux-g++ --sysroot=/opt/mbient-sdk-x86_64/1.0/sysroots/core2-64-mbient-linux  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tst_app.dir/main.cpp.o -c /home/avosipov/Desktop/draft/src/main.cpp

CMakeFiles/tst_app.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tst_app.dir/main.cpp.i"
	/opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/x86_64-mbient-linux/x86_64-mbient-linux-g++ --sysroot=/opt/mbient-sdk-x86_64/1.0/sysroots/core2-64-mbient-linux $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/avosipov/Desktop/draft/src/main.cpp > CMakeFiles/tst_app.dir/main.cpp.i

CMakeFiles/tst_app.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tst_app.dir/main.cpp.s"
	/opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/x86_64-mbient-linux/x86_64-mbient-linux-g++ --sysroot=/opt/mbient-sdk-x86_64/1.0/sysroots/core2-64-mbient-linux $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/avosipov/Desktop/draft/src/main.cpp -o CMakeFiles/tst_app.dir/main.cpp.s

CMakeFiles/tst_app.dir/AudioPipeline.cpp.o: CMakeFiles/tst_app.dir/flags.make
CMakeFiles/tst_app.dir/AudioPipeline.cpp.o: /home/avosipov/Desktop/draft/src/AudioPipeline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/avosipov/Desktop/draft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tst_app.dir/AudioPipeline.cpp.o"
	/opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/x86_64-mbient-linux/x86_64-mbient-linux-g++ --sysroot=/opt/mbient-sdk-x86_64/1.0/sysroots/core2-64-mbient-linux  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tst_app.dir/AudioPipeline.cpp.o -c /home/avosipov/Desktop/draft/src/AudioPipeline.cpp

CMakeFiles/tst_app.dir/AudioPipeline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tst_app.dir/AudioPipeline.cpp.i"
	/opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/x86_64-mbient-linux/x86_64-mbient-linux-g++ --sysroot=/opt/mbient-sdk-x86_64/1.0/sysroots/core2-64-mbient-linux $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/avosipov/Desktop/draft/src/AudioPipeline.cpp > CMakeFiles/tst_app.dir/AudioPipeline.cpp.i

CMakeFiles/tst_app.dir/AudioPipeline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tst_app.dir/AudioPipeline.cpp.s"
	/opt/mbient-sdk-x86_64/1.0/sysroots/x86_64-mbientsdk-linux/usr/bin/x86_64-mbient-linux/x86_64-mbient-linux-g++ --sysroot=/opt/mbient-sdk-x86_64/1.0/sysroots/core2-64-mbient-linux $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/avosipov/Desktop/draft/src/AudioPipeline.cpp -o CMakeFiles/tst_app.dir/AudioPipeline.cpp.s

# Object files for target tst_app
tst_app_OBJECTS = \
"CMakeFiles/tst_app.dir/main.cpp.o" \
"CMakeFiles/tst_app.dir/AudioPipeline.cpp.o"

# External object files for target tst_app
tst_app_EXTERNAL_OBJECTS =

tst_app: CMakeFiles/tst_app.dir/main.cpp.o
tst_app: CMakeFiles/tst_app.dir/AudioPipeline.cpp.o
tst_app: CMakeFiles/tst_app.dir/build.make
tst_app: CMakeFiles/tst_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/avosipov/Desktop/draft/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tst_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tst_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tst_app.dir/build: tst_app

.PHONY : CMakeFiles/tst_app.dir/build

CMakeFiles/tst_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tst_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tst_app.dir/clean

CMakeFiles/tst_app.dir/depend:
	cd /home/avosipov/Desktop/draft/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/avosipov/Desktop/draft/src /home/avosipov/Desktop/draft/src /home/avosipov/Desktop/draft/build /home/avosipov/Desktop/draft/build /home/avosipov/Desktop/draft/build/CMakeFiles/tst_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tst_app.dir/depend

