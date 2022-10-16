add_library(AuxLib OBJECT)

target_sources(AuxLib
  PRIVATE
  include/aux.h

  src/aux.cc
)

target_include_directories(AuxLib
  PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/include
)

target_include_directories(AuxLib
  PUBLIC
  ${PROJECT_SOURCE_DIR}/core/include
)

#target_link_libraries(AuxLib
#  PRIVATE
#  CoreLib
#)
