# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/a1111/Desktop/laba3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/a1111/Desktop/laba3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/smart_pointers_lab.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/smart_pointers_lab.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/smart_pointers_lab.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/smart_pointers_lab.dir/flags.make

CMakeFiles/smart_pointers_lab.dir/main.cpp.o: CMakeFiles/smart_pointers_lab.dir/flags.make
CMakeFiles/smart_pointers_lab.dir/main.cpp.o: /Users/a1111/Desktop/laba3/main.cpp
CMakeFiles/smart_pointers_lab.dir/main.cpp.o: CMakeFiles/smart_pointers_lab.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/a1111/Desktop/laba3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/smart_pointers_lab.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smart_pointers_lab.dir/main.cpp.o -MF CMakeFiles/smart_pointers_lab.dir/main.cpp.o.d -o CMakeFiles/smart_pointers_lab.dir/main.cpp.o -c /Users/a1111/Desktop/laba3/main.cpp

CMakeFiles/smart_pointers_lab.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/smart_pointers_lab.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/a1111/Desktop/laba3/main.cpp > CMakeFiles/smart_pointers_lab.dir/main.cpp.i

CMakeFiles/smart_pointers_lab.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/smart_pointers_lab.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/a1111/Desktop/laba3/main.cpp -o CMakeFiles/smart_pointers_lab.dir/main.cpp.s

# Object files for target smart_pointers_lab
smart_pointers_lab_OBJECTS = \
"CMakeFiles/smart_pointers_lab.dir/main.cpp.o"

# External object files for target smart_pointers_lab
smart_pointers_lab_EXTERNAL_OBJECTS =

smart_pointers_lab: CMakeFiles/smart_pointers_lab.dir/main.cpp.o
smart_pointers_lab: CMakeFiles/smart_pointers_lab.dir/build.make
smart_pointers_lab: CMakeFiles/smart_pointers_lab.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/a1111/Desktop/laba3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable smart_pointers_lab"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smart_pointers_lab.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/smart_pointers_lab.dir/build: smart_pointers_lab
.PHONY : CMakeFiles/smart_pointers_lab.dir/build

CMakeFiles/smart_pointers_lab.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/smart_pointers_lab.dir/cmake_clean.cmake
.PHONY : CMakeFiles/smart_pointers_lab.dir/clean

CMakeFiles/smart_pointers_lab.dir/depend:
	cd /Users/a1111/Desktop/laba3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/a1111/Desktop/laba3 /Users/a1111/Desktop/laba3 /Users/a1111/Desktop/laba3/cmake-build-debug /Users/a1111/Desktop/laba3/cmake-build-debug /Users/a1111/Desktop/laba3/cmake-build-debug/CMakeFiles/smart_pointers_lab.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/smart_pointers_lab.dir/depend

