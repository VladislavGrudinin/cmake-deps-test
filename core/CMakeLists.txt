add_library(CoreLib OBJECT)

if (ENABLE_AUTOMOC)
	target_sources(CoreLib
		PRIVATE
		core.h
		core.cc
		file2.h
		file2.cc
	)
else()
	SOURCES(CoreLib
		${CMAKE_CURRENT_LIST_DIR}/core.h
		${CMAKE_CURRENT_LIST_DIR}/core.cc
		#${CMAKE_CURRENT_LIST_DIR}/algo/file1.h
		#${CMAKE_CURRENT_LIST_DIR}/algo/file1.cc
		${CMAKE_CURRENT_LIST_DIR}/file2.h
		${CMAKE_CURRENT_LIST_DIR}/file2.cc
	)
endif()

add_subdirectory(algo)

get_target_property(
	HAS_AUTOMOC CoreLib AUTOMOC
)

message(STATUS "HAS AUTOMOC ${HAS_AUTOMOC}")

target_include_directories(CoreLib
	INTERFACE
	${CMAKE_CURRENT_LIST_DIR}
)

target_compile_definitions(CoreLib
	PRIVATE
	CORE_LIB
)

target_link_libraries(CoreLib
	PUBLIC
	Qt5::Core
)
