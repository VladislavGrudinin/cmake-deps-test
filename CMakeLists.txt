cmake_minimum_required(VERSION 3.16)

set(CMAKE_ADD_CUSTOM_COMMAND_DEPENDS_EXPLICIT_ONLY ON)

project(DepTest LANGUAGES CXX)

find_package(Qt5 COMPONENTS Core)

option(ENABLE_AUTMOC "" ON)

if (ENABLE_AUTMOC)
	set(CMAKE_AUTOMOC TRUE)
endif()

add_subdirectory(core)
add_subdirectory(aux)
add_subdirectory(src)
