# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Users\Josh Shiells\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.6682.181\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\Josh Shiells\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.6682.181\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Josh Shiells\CLionProjects\Window32API"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\Window32API.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\Window32API.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Window32API.dir\flags.make

CMakeFiles\Window32API.dir\main.cpp.obj: CMakeFiles\Window32API.dir\flags.make
CMakeFiles\Window32API.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Window32API.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Window32API.dir\main.cpp.obj /FdCMakeFiles\Window32API.dir\ /FS -c "C:\Users\Josh Shiells\CLionProjects\Window32API\main.cpp"
<<

CMakeFiles\Window32API.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Window32API.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Window32API.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Josh Shiells\CLionProjects\Window32API\main.cpp"
<<

CMakeFiles\Window32API.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Window32API.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Window32API.dir\main.cpp.s /c "C:\Users\Josh Shiells\CLionProjects\Window32API\main.cpp"
<<

# Object files for target Window32API
Window32API_OBJECTS = \
"CMakeFiles\Window32API.dir\main.cpp.obj"

# External object files for target Window32API
Window32API_EXTERNAL_OBJECTS =

Window32API.exe: CMakeFiles\Window32API.dir\main.cpp.obj
Window32API.exe: CMakeFiles\Window32API.dir\build.make
Window32API.exe: CMakeFiles\Window32API.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Window32API.exe"
	"C:\Users\Josh Shiells\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.6682.181\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Window32API.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~1\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Window32API.dir\objects1.rsp @<<
 /out:Window32API.exe /implib:Window32API.lib /pdb:"C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug\Window32API.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Window32API.dir\build: Window32API.exe

.PHONY : CMakeFiles\Window32API.dir\build

CMakeFiles\Window32API.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Window32API.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Window32API.dir\clean

CMakeFiles\Window32API.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\Users\Josh Shiells\CLionProjects\Window32API" "C:\Users\Josh Shiells\CLionProjects\Window32API" "C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug" "C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug" "C:\Users\Josh Shiells\CLionProjects\Window32API\cmake-build-debug\CMakeFiles\Window32API.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\Window32API.dir\depend

