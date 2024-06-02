cmake_minimum_required(VERSION 3.15)
project(cxxLibrary LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

# Define the library
add_library(cxxLibrary STATIC
        player.cpp
        )

# Include directories
target_include_directories(cxxLibrary PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        )

# Custom target to remove compiler id files
add_custom_target(remove_compiler_id_files ALL
        COMMAND ${CMAKE_COMMAND} -E remove -f "${CMAKE_BINARY_DIR}/CMakeFiles/3.26.0/CompilerIdCXX/CMakeCXXCompilerId.cpp"
        )

# Ensure the custom target runs before building the library
add_dependencies(cxxLibrary remove_compiler_id_files)
