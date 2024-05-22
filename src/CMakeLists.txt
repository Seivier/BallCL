find_package(OpenGL REQUIRED)

file(GLOB SOURCES *.cc *.h)

include_directories(${OPENGL_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} PRIVATE glfw glad OpenGL::GL imgui glm)

file(REMOVE_RECURSE ${CMAKE_CURRENT_BINARY_DIR}/shaders)
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/shaders DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
