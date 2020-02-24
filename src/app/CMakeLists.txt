#----------
# Main-Application
#----------

project(Main LANGUAGES CXX)

# Add an executable for the file main.cpp
add_executable(${PROJECT_NAME} main.cpp)

# Set application solution folder
set_property(TARGET ${PROJECT_NAME} PROPERTY FOLDER "Application")

target_link_libraries(${PROJECT_NAME}
  PUBLIC
    lib::Hello
    lib::PocoTimer
)
