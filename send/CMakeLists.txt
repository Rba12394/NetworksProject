cmake_minimum_required(VERSION 3.6)
project(NetworksFinalProj)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES sendRawEth.c)
add_executable(NetworksFinalProj ${SOURCE_FILES})