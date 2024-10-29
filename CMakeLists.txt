cmake_minimum_required(VERSION 3.10)
project(FTPServer)

set(CMAKE_CXX_STANDARD 17)

# Add source files
set(SOURCES
    src/main.cpp
    src/FTPServer.cpp
    src/Utility.cpp
)

# Add header files
include_directories(${PROJECT_SOURCE_DIR}/include)

# Create executable
add_executable(ftpserver ${SOURCES})

# Link against pthread library
target_link_libraries(ftpserver pthread)
