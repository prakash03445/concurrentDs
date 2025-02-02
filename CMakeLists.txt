cmake_minimum_required(VERSION 3.31)
project(ThreadSafeDs)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

include_directories(${CMAKE_SOURCE_DIR}/include)


file(GLOB SOURCES "src/*.cpp")

add_library(ThreadSafeDs STATIC ${SOURCES})

target_link_libraries(ThreadSafeDs PRIVATE Threads::Threads)

option(BUILD_EXAMPLES "Build example programs" ON)
if (BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()