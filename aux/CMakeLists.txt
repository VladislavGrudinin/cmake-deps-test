add_library(AuxLib OBJECT)

target_sources(AuxLib
	PRIVATE
	aux.h
	aux.cc
)

target_include_directories(AuxLib
	INTERFACE
	${CMAKE_CURRENT_LIST_DIR}
)

target_compile_definitions(AuxLib
	PRIVATE
	AUX_LIB
)

#target_include_directories(AuxLib
#	PUBLIC
#	${PROJECT_SOURCE_DIR}/core
#)

target_link_libraries(AuxLib
	PUBLIC
	Qt5::Core
	PRIVATE
	CoreLib
)

if (NOT ENABLE_AUTOMOC)
	qt_wrap_cpp(MOC_SOURCES
		aux.h
		TARGET
		AuxLib
	)

	target_sources(AuxLib
		PRIVATE
		${MOC_SOURCES}
	)
endif()
