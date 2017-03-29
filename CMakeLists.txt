cmake_minimum_required(VERSION 3.6)
project(NetworksProject)

set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror")

set(SOURCE_FILES main.c)
add_executable(NetworksProject ${SOURCE_FILES})