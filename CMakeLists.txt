cmake_minimum_required(VERSION 3.10)
project(untitled1)

set(CMAKE_CXX_STANDARD 14)

add_executable(untitled1 main.cpp)

include_directories( /usr/lib/llvm-6.0/include)

SET(CMAKE_CXX_FLAGS "`llvm-config --cxxflags --ldflags --libs --libfiles --system-libs`")