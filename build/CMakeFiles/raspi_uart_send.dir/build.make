# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/LV_code/opencv_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/LV_code/opencv_test/build

# Include any dependencies generated for this target.
include CMakeFiles/raspi_uart_send.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/raspi_uart_send.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raspi_uart_send.dir/flags.make

CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o: CMakeFiles/raspi_uart_send.dir/flags.make
CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o: ../raspi_uart_send.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LV_code/opencv_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o -c /home/pi/LV_code/opencv_test/raspi_uart_send.cpp

CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/LV_code/opencv_test/raspi_uart_send.cpp > CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.i

CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/LV_code/opencv_test/raspi_uart_send.cpp -o CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.s

CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.requires:

.PHONY : CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.requires

CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.provides: CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.requires
	$(MAKE) -f CMakeFiles/raspi_uart_send.dir/build.make CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.provides.build
.PHONY : CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.provides

CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.provides.build: CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o


# Object files for target raspi_uart_send
raspi_uart_send_OBJECTS = \
"CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o"

# External object files for target raspi_uart_send
raspi_uart_send_EXTERNAL_OBJECTS =

libraspi_uart_send.a: CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o
libraspi_uart_send.a: CMakeFiles/raspi_uart_send.dir/build.make
libraspi_uart_send.a: CMakeFiles/raspi_uart_send.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/LV_code/opencv_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libraspi_uart_send.a"
	$(CMAKE_COMMAND) -P CMakeFiles/raspi_uart_send.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raspi_uart_send.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raspi_uart_send.dir/build: libraspi_uart_send.a

.PHONY : CMakeFiles/raspi_uart_send.dir/build

CMakeFiles/raspi_uart_send.dir/requires: CMakeFiles/raspi_uart_send.dir/raspi_uart_send.cpp.o.requires

.PHONY : CMakeFiles/raspi_uart_send.dir/requires

CMakeFiles/raspi_uart_send.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raspi_uart_send.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raspi_uart_send.dir/clean

CMakeFiles/raspi_uart_send.dir/depend:
	cd /home/pi/LV_code/opencv_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LV_code/opencv_test /home/pi/LV_code/opencv_test /home/pi/LV_code/opencv_test/build /home/pi/LV_code/opencv_test/build /home/pi/LV_code/opencv_test/build/CMakeFiles/raspi_uart_send.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/raspi_uart_send.dir/depend

