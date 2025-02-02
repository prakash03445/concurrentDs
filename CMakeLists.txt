# cmake versino 
cmake_minimum_required(VERSION 3.31)

set(CMAKE_CXX_STANDARD 17)

project(ThreadSafeDs)

include(cmake/buildLib.cmake)
include(cmake/buildTest.cmake)