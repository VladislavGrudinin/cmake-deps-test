add_library(CoreLib OBJECT)

target_sources(CoreLib
  PRIVATE
  include/core.h

  src/core.cc
)

target_include_directories(CoreLib
  PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/include
)

target_link_libraries(CoreLib
  PUBLIC
  Qt5::Core
)
