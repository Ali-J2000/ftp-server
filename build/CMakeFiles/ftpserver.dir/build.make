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
CMAKE_SOURCE_DIR = /root/ftp-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/ftp-server/build

# Include any dependencies generated for this target.
include CMakeFiles/ftpserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ftpserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ftpserver.dir/flags.make

CMakeFiles/ftpserver.dir/src/main.cpp.o: CMakeFiles/ftpserver.dir/flags.make
CMakeFiles/ftpserver.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ftp-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ftpserver.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ftpserver.dir/src/main.cpp.o -c /root/ftp-server/src/main.cpp

CMakeFiles/ftpserver.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ftpserver.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ftp-server/src/main.cpp > CMakeFiles/ftpserver.dir/src/main.cpp.i

CMakeFiles/ftpserver.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ftpserver.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ftp-server/src/main.cpp -o CMakeFiles/ftpserver.dir/src/main.cpp.s

CMakeFiles/ftpserver.dir/src/FTPServer.cpp.o: CMakeFiles/ftpserver.dir/flags.make
CMakeFiles/ftpserver.dir/src/FTPServer.cpp.o: ../src/FTPServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ftp-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ftpserver.dir/src/FTPServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ftpserver.dir/src/FTPServer.cpp.o -c /root/ftp-server/src/FTPServer.cpp

CMakeFiles/ftpserver.dir/src/FTPServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ftpserver.dir/src/FTPServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ftp-server/src/FTPServer.cpp > CMakeFiles/ftpserver.dir/src/FTPServer.cpp.i

CMakeFiles/ftpserver.dir/src/FTPServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ftpserver.dir/src/FTPServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ftp-server/src/FTPServer.cpp -o CMakeFiles/ftpserver.dir/src/FTPServer.cpp.s

CMakeFiles/ftpserver.dir/src/Utility.cpp.o: CMakeFiles/ftpserver.dir/flags.make
CMakeFiles/ftpserver.dir/src/Utility.cpp.o: ../src/Utility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ftp-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ftpserver.dir/src/Utility.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ftpserver.dir/src/Utility.cpp.o -c /root/ftp-server/src/Utility.cpp

CMakeFiles/ftpserver.dir/src/Utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ftpserver.dir/src/Utility.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ftp-server/src/Utility.cpp > CMakeFiles/ftpserver.dir/src/Utility.cpp.i

CMakeFiles/ftpserver.dir/src/Utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ftpserver.dir/src/Utility.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ftp-server/src/Utility.cpp -o CMakeFiles/ftpserver.dir/src/Utility.cpp.s

# Object files for target ftpserver
ftpserver_OBJECTS = \
"CMakeFiles/ftpserver.dir/src/main.cpp.o" \
"CMakeFiles/ftpserver.dir/src/FTPServer.cpp.o" \
"CMakeFiles/ftpserver.dir/src/Utility.cpp.o"

# External object files for target ftpserver
ftpserver_EXTERNAL_OBJECTS =

ftpserver: CMakeFiles/ftpserver.dir/src/main.cpp.o
ftpserver: CMakeFiles/ftpserver.dir/src/FTPServer.cpp.o
ftpserver: CMakeFiles/ftpserver.dir/src/Utility.cpp.o
ftpserver: CMakeFiles/ftpserver.dir/build.make
ftpserver: CMakeFiles/ftpserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ftp-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ftpserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ftpserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ftpserver.dir/build: ftpserver

.PHONY : CMakeFiles/ftpserver.dir/build

CMakeFiles/ftpserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ftpserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ftpserver.dir/clean

CMakeFiles/ftpserver.dir/depend:
	cd /root/ftp-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ftp-server /root/ftp-server /root/ftp-server/build /root/ftp-server/build /root/ftp-server/build/CMakeFiles/ftpserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ftpserver.dir/depend

