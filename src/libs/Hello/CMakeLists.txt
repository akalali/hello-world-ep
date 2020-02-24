project(Hello LANGUAGES CXX)

# File setup
set(HEADER_FILES
  include/Hello.h
)

set(SOURCE_FILES
  src/Hello.cpp
)

# Generate library from the library sources
add_library(${PROJECT_NAME} ${HEADER_FILES} ${SOURCE_FILES})
add_library(lib::Hello ALIAS ${PROJECT_NAME})

# Set libs solution folder
set_property(TARGET ${PROJECT_NAME} PROPERTY FOLDER "Libs")

# Include header files for the target library
# PUBLIC allows users of the library to see these header files
target_include_directories(${PROJECT_NAME}
  PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)
