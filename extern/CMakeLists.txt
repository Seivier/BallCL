add_subdirectory(glm)
add_subdirectory(glfw)

# ImGui
file(GLOB IMGUI_SOURCES imgui/*.cpp)
add_library(imgui STATIC
        ${IMGUI_SOURCES}
        imgui/backends/imgui_impl_glfw.cpp
        imgui/backends/imgui_impl_opengl3.cpp
)

target_include_directories(imgui PUBLIC imgui imgui/backends)
target_link_libraries(imgui PRIVATE glfw)

# glad
add_library(glad STATIC glad/src/glad.c)
target_include_directories(glad PUBLIC glad/include)
