if (ENABLE_AUTOMOC)
	target_sources(CoreLib
		PRIVATE
		file1.h
		file1.cc
	)
else()
	SOURCES(CoreLib
		${CMAKE_CURRENT_LIST_DIR}/file1.h
		${CMAKE_CURRENT_LIST_DIR}/file1.cc
	)
endif()
