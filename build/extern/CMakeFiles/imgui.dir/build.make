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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build"

# Include any dependencies generated for this target.
include extern/CMakeFiles/imgui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/CMakeFiles/imgui.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include extern/CMakeFiles/imgui.dir/flags.make

extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui.cpp
extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui.cpp"

extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui.cpp" > CMakeFiles/imgui.dir/imgui/imgui.cpp.i

extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui.cpp" -o CMakeFiles/imgui.dir/imgui/imgui.cpp.s

extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_demo.cpp
extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_demo.cpp"

extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_demo.cpp" > CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.i

extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_demo.cpp" -o CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.s

extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_draw.cpp
extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_draw.cpp"

extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_draw.cpp" > CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.i

extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_draw.cpp" -o CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.s

extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_tables.cpp
extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_tables.cpp"

extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_tables.cpp" > CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.i

extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_tables.cpp" -o CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.s

extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_widgets.cpp
extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_widgets.cpp"

extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_widgets.cpp" > CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.i

extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/imgui_widgets.cpp" -o CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.s

extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_glfw.cpp
extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_glfw.cpp"

extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_glfw.cpp" > CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.i

extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_glfw.cpp" -o CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.s

extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o: extern/CMakeFiles/imgui.dir/flags.make
extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o: /Users/vgonzalez/Documents/Dev/Universidad/Computación\ en\ GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_opengl3.cpp
extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o: extern/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o -c "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_opengl3.cpp"

extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.i"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_opengl3.cpp" > CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.i

extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.s"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern/imgui/backends/imgui_impl_opengl3.cpp" -o CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui/imgui.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o" \
"CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/imgui.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/imgui_demo.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/imgui_draw.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/imgui_tables.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/imgui_widgets.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_glfw.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/imgui/backends/imgui_impl_opengl3.cpp.o
extern/libimgui.a: extern/CMakeFiles/imgui.dir/build.make
extern/libimgui.a: extern/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libimgui.a"
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean_target.cmake
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/CMakeFiles/imgui.dir/build: extern/libimgui.a
.PHONY : extern/CMakeFiles/imgui.dir/build

extern/CMakeFiles/imgui.dir/clean:
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : extern/CMakeFiles/imgui.dir/clean

extern/CMakeFiles/imgui.dir/depend:
	cd "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta" "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/extern" "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build" "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern" "/Users/vgonzalez/Documents/Dev/Universidad/Computación en GPU/CC7515-24O/auxiliares/4/pauta/build/extern/CMakeFiles/imgui.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : extern/CMakeFiles/imgui.dir/depend

