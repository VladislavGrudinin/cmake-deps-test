add_library(CoreLib OBJECT)

target_sources(CoreLib
	PRIVATE
	core.h
	core.cc
	file1.h
	file1.cc
	file2.h
	file2.cc
)

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

qt_wrap_cpp(MOC_SOURCES
	core.h
	file1.h
	file2.h
	TARGET CoreLib
)

target_sources(CoreLib
	PRIVATE
	${MOC_SOURCES}
)
