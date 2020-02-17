#----------
# Main-Application
#----------

project(Main LANGUAGES CXX)

# Add an executable for the file main.cpp
add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME}
  PUBLIC
    lib::Hello
    lib::PocoTimer
)
