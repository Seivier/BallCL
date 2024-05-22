#include <cstdlib>
#include <ctime>
#include <format>
#include <iostream>
#define GL_SILENCE_DEPRECATION
#include <glad/glad.h>
#include <GLFW/glfw3.h>  // Will drag system OpenGL headers
#include <stdio.h>

#include <glm/geometric.hpp>

#include "ball.h"
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "shader.h"

#define WIDTH 800
#define HEIGHT 800
#define N 100


// [Win32] Our example includes a copy of glfw3.lib pre-compiled with VS2010 to
// maximize ease of testing and compatibility with old VS compilers. To link
// with VS2010-era libraries, VS2015+ requires linking with
// legacy_stdio_definitions.lib, which we do using this pragma. Your own project
// should not be affected, as you are likely to link with a newer binary of GLFW
// that is adequate for your version of Visual Studio.
#if defined(_MSC_VER) && (_MSC_VER >= 1900) && \
    !defined(IMGUI_DISABLE_WIN32_FUNCTIONS)
#pragma comment(lib, "legacy_stdio_definitions")
#endif
ImGuiIO* io;
bool stop = false;

static void glfw_error_callback(int error, const char* description) {
  fprintf(stderr, "GLFW Error %d: %s\n", error, description);
}

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
  if (io->WantCaptureKeyboard) return;
  if (key == GLFW_KEY_SPACE && action == GLFW_PRESS)
    stop = !stop;
}

static void simulate(std::vector<Ball>* balls, float deltaTime) {
  // collisions
  for (int i = 0; i < balls->size(); i++) {
    for (int j = i + 1; j < balls->size(); j++) {
      auto& b1 = balls->at(i);
      auto& b2 = balls->at(j);
      if (b1.check(b2)) {
        auto collision = b1.position - b2.position;
        float distance = glm::length(collision);
        glm::vec2 plane = collision / distance;
        float b1i = glm::dot(b1.velocity, plane);
        float b2i = glm::dot(b2.velocity, plane);

        float b1f = b2i;
        float b2f = b1i;

        b1.velocity += (b1f - b1i) * plane;
        b2.velocity += (b2f - b2i) * plane;

        // position correction
        float delta = b1.radius + b2.radius - distance;
        b1.position += 0.5f * delta * plane;
        b2.position -= 0.5f * delta * plane;
      }
    }
  }

  // wall collisions
  for (auto& b : *balls) {
    if (b.position.x - b.radius < -1.0) {
      b.velocity.x *= -1;
      float delta = b.position.x - b.radius + 1.0;
      b.position.x -= delta;
    }

    if (b.position.x + b.radius > 1.0) {
      b.velocity.x *= -1;
      float delta = b.position.x + b.radius - 1.0;
      b.position.x -= delta;
    }

    if (b.position.y - b.radius < -1.0) {
      b.velocity.y *= -1;
      float delta = b.position.y - b.radius + 1.0;
      b.position.y -= delta;
    }
    if (b.position.y + b.radius > 1.0) {
      b.velocity.y *= -1;
      float delta = b.position.y + b.radius - 1.0;
      b.position.y -= delta;
    }
  }

  // movement
  for (auto& b : *balls) {
    b.position += b.velocity * deltaTime;
  }
}

// Main code
int main(int, char**) {
  glfwSetErrorCallback(glfw_error_callback);
  if (!glfwInit()) return 1;

#if defined(__APPLE__)
  // GL 3.2 + GLSL 150
  const char* glsl_version = "#version 400";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);  // Required on Mac
#else
  // GL 3.0 + GLSL 130
  const char* glsl_version = "#version 400";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
  // glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+
  // only glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // 3.0+ only
#endif
  glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);
  // Create window with graphics context
  GLFWwindow* window = glfwCreateWindow(
      WIDTH, HEIGHT, "Ball Collision Simulation", nullptr, nullptr);
  if (window == nullptr) return 1;
  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);  // Enable vsync
                        //

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    return -1;
  }

  // Setup Dear ImGui context
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  io = &ImGui::GetIO();
  (void)io;
  io->ConfigFlags |=
      ImGuiConfigFlags_NavEnableKeyboard;  // Enable Keyboard Controls
  io->ConfigFlags |=
      ImGuiConfigFlags_NavEnableGamepad;  // Enable Gamepad Controls

  // Setup Dear ImGui style
  ImGui::StyleColorsDark();
  // ImGui::StyleColorsLight();

  // Setup Platform/Renderer backends
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init(glsl_version);

  // Simulation params
  Shader shader("src/shaders/vert.glsl", "src/shaders/frag.glsl");
  std::vector<Ball> balls(N);
  Ball* target = nullptr;
  double xpos, ypos;
  for (auto& b : balls) {
    b.position = {drand48() * 2 - 1.0, drand48() * 2 - 1.0};
    b.velocity = {drand48() - 0.5, drand48() - 0.5};
    b.color = {drand48(), drand48(), drand48()};
    b.radius = 2.0f / N;
    b.setup(shader);
  }

  auto now = glfwGetTime();
  double last;

  glfwSetKeyCallback(window, key_callback);

  // Main loop
  while (!glfwWindowShouldClose(window)) {
    glfwPollEvents();

    if (!io->WantCaptureMouse) {
      glfwGetCursorPos(window, &xpos, &ypos);
      int lstate = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_LEFT);
      if (lstate == GLFW_PRESS) {
        glm::vec2 realpos(xpos / (WIDTH * 0.5) - 1,
                          -(ypos / (HEIGHT * 0.5) - 1));
        for (auto& b : balls)
          if (b.check(realpos)) target = &b;
      }
      int rstate = glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_RIGHT);
      if (rstate == GLFW_PRESS) target = nullptr;
    }


    auto title = std::vformat(
        "Ball collision {0:.3f} ms/frame ({1:.1f} FPS)",
        std::make_format_args(1000.0f / io->Framerate, io->Framerate));
    glfwSetWindowTitle(window, title.c_str());

    // simulation
    last = now;
    now = glfwGetTime();

    if (!stop)
      simulate(&balls, now - last);

    // Start the Dear ImGui frame
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    if (target) {
      ImGui::Begin("Información");  // Create a window called "Hello,
                                    // world!" and append into it.
      ImGui::Text("Pelota en (%.2f, %.2f)", target->position.x,
                  target->position.y);
      ImGui::SliderFloat("Radio", &target->radius, 0.0f, 1.0f);
      ImGui::ColorEdit3(
          "Color",
          (float*)&target->color);  // Edit 3 floats representing a color

      ImGui::SliderFloat2("Velocidad", (float*)&target->velocity, -1.0, 1.0);

      ImGui::End();
    }

    // // 3. Show another simple window.
    // if (show_another_window) {
    //   ImGui::Begin(
    //       "Another Window",
    //       &show_another_window);  // Pass a pointer to our bool variable (the
    //                               // window will have a closing button that
    //                               will
    //                               // clear the bool when clicked)
    //   ImGui::Text("Hello from another window!");
    //   if (ImGui::Button("Close Me")) show_another_window = false;
    //   ImGui::End();
    // }

    // Rendering

    ImGui::Render();
    int display_w, display_h;
    glfwGetFramebufferSize(window, &display_w, &display_h);
    glViewport(0, 0, display_w, display_h);
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
    shader.bind();
    for (auto& b : balls) {
      shader.setUniform3f("color", b.color);
      shader.setUniform1f("scale", b.radius);
      shader.setUniform3f("position", glm::vec3(b.position, 1.0));
      b.draw();
    }
    shader.unbind();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    glfwSwapBuffers(window);
  }

  // Cleanup
  ImGui_ImplOpenGL3_Shutdown();
  ImGui_ImplGlfw_Shutdown();
  ImGui::DestroyContext();

  glfwDestroyWindow(window);
  glfwTerminate();

  return 0;
}
