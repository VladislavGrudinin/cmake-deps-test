cmake_minimum_required(VERSION 3.16)

project(DepTest LANGUAGES CXX)

include(cmake/cmSources.cmake)

find_package(Qt5 COMPONENTS Core)

option(ENABLE_AUTOMOC "" ON)

if (ENABLE_AUTOMOC)
	set(CMAKE_AUTOMOC TRUE)
endif()

add_subdirectory(core)
add_subdirectory(aux)
add_subdirectory(src)
