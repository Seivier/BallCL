#ifndef BALLCL_BALL_H_
#define BALLCL_BALL_H_

#include <glm/vec3.hpp>
#include <glm/vec2.hpp>
#include <vector>
#include "shader.h"

using vector = glm::vec2;
using color = glm::vec3;
using uint = unsigned int;

class Ball {
 public:
  vector velocity;
  vector position;
  color color;
  float radius;

  Ball();
  ~Ball();
  void draw();
  void update();
  bool check(const vector& point);
  bool check(const Ball& ball);
  void setup(Shader& sh);

 private:
  struct Buffer {
    uint ebo, vbo, vao;
  };

  Buffer buff_;
  std::vector<vector> points_;
  std::vector<uint> indices_;

  void bind();
  void unbind();
};

#endif  // BALLCL_BALL_H_
