cmake_minimum_required(VERSION 3.16)

project(DepTest LANGUAGES CXX)

find_package(Qt5 COMPONENTS Core)

set(CMAKE_AUTOMOC TRUE)

add_subdirectory(core)
add_subdirectory(aux)
add_subdirectory(src)
