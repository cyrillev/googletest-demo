# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cyrille/github/googletest-demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cyrille/github/googletest-demo

# Include any dependencies generated for this target.
include NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/flags.make

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/flags.make
NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o: NoFlyListTest/gtest-1.6.0/src/gtest-all.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cyrille/github/googletest-demo/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -Wall -Wshadow -DGTEST_HAS_PTHREAD=1 -fexceptions -Wextra -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0/src/gtest-all.cc

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -Wall -Wshadow -DGTEST_HAS_PTHREAD=1 -fexceptions -Wextra -E /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -Wall -Wshadow -DGTEST_HAS_PTHREAD=1 -fexceptions -Wextra -S /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires:
.PHONY : NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires
	$(MAKE) -f NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/build.make NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides.build
.PHONY : NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides.build: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

NoFlyListTest/gtest-1.6.0/libgtest.a: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o
NoFlyListTest/gtest-1.6.0/libgtest.a: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/build.make
NoFlyListTest/gtest-1.6.0/libgtest.a: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgtest.a"
	cd /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/build: NoFlyListTest/gtest-1.6.0/libgtest.a
.PHONY : NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/build

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/requires: NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires
.PHONY : NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/requires

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/clean:
	cd /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/clean

NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/depend:
	cd /home/cyrille/github/googletest-demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cyrille/github/googletest-demo /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 /home/cyrille/github/googletest-demo /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0 /home/cyrille/github/googletest-demo/NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : NoFlyListTest/gtest-1.6.0/CMakeFiles/gtest.dir/depend

