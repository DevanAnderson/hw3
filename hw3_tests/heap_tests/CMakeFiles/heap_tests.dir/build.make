# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /work/homework/hw3/hw3_tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /work/homework/hw3/hw3_tests

# Include any dependencies generated for this target.
include heap_tests/CMakeFiles/heap_tests.dir/depend.make

# Include the progress variables for this target.
include heap_tests/CMakeFiles/heap_tests.dir/progress.make

# Include the compile flags for this target's objects.
include heap_tests/CMakeFiles/heap_tests.dir/flags.make

heap_tests/CMakeFiles/heap_tests.dir/heap_tests.cpp.o: heap_tests/CMakeFiles/heap_tests.dir/flags.make
heap_tests/CMakeFiles/heap_tests.dir/heap_tests.cpp.o: heap_tests/heap_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/homework/hw3/hw3_tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object heap_tests/CMakeFiles/heap_tests.dir/heap_tests.cpp.o"
	cd /work/homework/hw3/hw3_tests/heap_tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/heap_tests.dir/heap_tests.cpp.o -c /work/homework/hw3/hw3_tests/heap_tests/heap_tests.cpp

heap_tests/CMakeFiles/heap_tests.dir/heap_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heap_tests.dir/heap_tests.cpp.i"
	cd /work/homework/hw3/hw3_tests/heap_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/homework/hw3/hw3_tests/heap_tests/heap_tests.cpp > CMakeFiles/heap_tests.dir/heap_tests.cpp.i

heap_tests/CMakeFiles/heap_tests.dir/heap_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heap_tests.dir/heap_tests.cpp.s"
	cd /work/homework/hw3/hw3_tests/heap_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/homework/hw3/hw3_tests/heap_tests/heap_tests.cpp -o CMakeFiles/heap_tests.dir/heap_tests.cpp.s

# Object files for target heap_tests
heap_tests_OBJECTS = \
"CMakeFiles/heap_tests.dir/heap_tests.cpp.o"

# External object files for target heap_tests
heap_tests_EXTERNAL_OBJECTS =

heap_tests/heap_tests: heap_tests/CMakeFiles/heap_tests.dir/heap_tests.cpp.o
heap_tests/heap_tests: heap_tests/CMakeFiles/heap_tests.dir/build.make
heap_tests/heap_tests: testing_utils/libtesting_utils.a
heap_tests/heap_tests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
heap_tests/heap_tests: /usr/lib/x86_64-linux-gnu/libgtest.a
heap_tests/heap_tests: testing_utils/kwsys/libkwsys.a
heap_tests/heap_tests: heap_tests/CMakeFiles/heap_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/homework/hw3/hw3_tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable heap_tests"
	cd /work/homework/hw3/hw3_tests/heap_tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heap_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
heap_tests/CMakeFiles/heap_tests.dir/build: heap_tests/heap_tests

.PHONY : heap_tests/CMakeFiles/heap_tests.dir/build

heap_tests/CMakeFiles/heap_tests.dir/clean:
	cd /work/homework/hw3/hw3_tests/heap_tests && $(CMAKE_COMMAND) -P CMakeFiles/heap_tests.dir/cmake_clean.cmake
.PHONY : heap_tests/CMakeFiles/heap_tests.dir/clean

heap_tests/CMakeFiles/heap_tests.dir/depend:
	cd /work/homework/hw3/hw3_tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/homework/hw3/hw3_tests /work/homework/hw3/hw3_tests/heap_tests /work/homework/hw3/hw3_tests /work/homework/hw3/hw3_tests/heap_tests /work/homework/hw3/hw3_tests/heap_tests/CMakeFiles/heap_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : heap_tests/CMakeFiles/heap_tests.dir/depend

