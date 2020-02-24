project(PocoTimer LANGUAGES CXX)

# File setup
set(HEADER_FILES
  include/PocoTimer.h
)

set(SOURCE_FILES
  src/PocoTimer.cpp
)

# Generate library from the library sources
add_library(${PROJECT_NAME} ${HEADER_FILES} ${SOURCE_FILES})
add_library(lib::PocoTimer ALIAS ${PROJECT_NAME})

# Set libs solution folder
set_property(TARGET ${PROJECT_NAME} PROPERTY FOLDER "Libs")

# Include header files for the target library
# PUBLIC allows users of the library to see these header files
target_include_directories(${PROJECT_NAME}
  PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

target_link_libraries(${PROJECT_NAME}
  PUBLIC
    Poco::Foundation
)
