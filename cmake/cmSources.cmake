include_guard(GLOBAL)

function(SOURCES target)
	if (NOT TARGET ${target})
		message(FATAL_ERROR "Unknown target ${target}")
		return()
	endif()

	set(CMAKE_ADD_CUSTOM_COMMAND_DEPENDS_EXPLICIT_ONLY ON)

	set(srcs ${ARGN})
	list(POP_FRONT ${srcs})

	set(hdrs ${srcs})
	list(FILTER hdrs INCLUDE REGEX "\.h$")

	#foreach(src ${srcs})
	#	get_filename_component(ext ${src} LAST_EXT)
	#	if (NOT "${ext}" STREQUAL ".h")
	#		continue()
	#	endif()
	#	get_filename_component(basename ${src} NAME_WLE)
	#	set(dst ${CMAKE_CURRENT_BINARY_DIR}/${basename}.cpp)
	#	#message(STATUS "${src} -> ${dst}")
	#	qt_generate_moc(${src} ${dst} TARGET ${target})
	#	list(APPEND mocs ${dst})
	#endforeach()

	qt5_wrap_cpp(mocs
		${hdrs}
		TARGET ${target}
		OPTIONS --no-notes
	)

	message(WARNING "${hdrs}")
	message(WARNING "${mocs}")

	target_sources(${target}
		PRIVATE
		${srcs}
		${mocs}
	)
endfunction()
