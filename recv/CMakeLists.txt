cmake_minimum_required(VERSION 3.6)
project(NetworksFinalProj2)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES recvRawEth.c)
add_executable(NetworksFinalProj2 ${SOURCE_FILES})