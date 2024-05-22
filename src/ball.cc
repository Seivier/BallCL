#include "ball.h"

#include <glad/glad.h>

#include <glm/geometric.hpp>
#include <iostream>
#include <numbers>
#include <vector>

#include "glm/trigonometric.hpp"

#define PRECISION 36

void createSphere(std::vector<vector>* points, std::vector<uint>* indices) {
  points->clear();
  float dTheta = 2 * std::numbers::pi / PRECISION;
  for (size_t i = 0; i < PRECISION; i++) {
    float theta = i * dTheta;
    // float nextTheta = theta + dTheta;
    points->emplace_back(glm::cos(theta), glm::sin(theta));
    // points->emplace_back(radius * glm::cos(nextTheta),
    //                      radius * glm::sin(nextTheta));
  }
  points->emplace_back(0, 0);

  indices->clear();
  for (size_t i = 0; i < points->size() - 2; i++) {
    indices->push_back(points->size() - 1);
    indices->push_back(i);
    indices->push_back(i + 1);
  }
  indices->push_back(points->size() - 1);
  indices->push_back(points->size() - 2);
  indices->push_back(0);
}

Ball::Ball()
    : position(0, 0), velocity(0, 0), color(0, 0, 0), radius(0.5) {
  glGenVertexArrays(1, &buff_.vao);
  glGenBuffers(1, &buff_.ebo);
  glGenBuffers(1, &buff_.vbo);
  update();
}

Ball::~Ball() {
  glDeleteVertexArrays(1, &buff_.vao);
  glDeleteBuffers(1, &buff_.ebo);
  glDeleteBuffers(1, &buff_.vbo);
}

void Ball::bind() {
  glBindVertexArray(buff_.vao);
  glBindBuffer(GL_ARRAY_BUFFER, buff_.vbo);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, buff_.ebo);
}

void Ball::unbind() {
  glBindVertexArray(0);
  glBindBuffer(GL_ARRAY_BUFFER, 0);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

void Ball::draw() {
  bind();
  glBufferData(GL_ARRAY_BUFFER, points_.size() * sizeof(vector), points_.data(),
               GL_DYNAMIC_DRAW);

  glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices_.size() * sizeof(unsigned int),
               indices_.data(), GL_DYNAMIC_DRAW);
  glDrawElements(GL_TRIANGLES, indices_.size() + 3, GL_UNSIGNED_INT, 0);
  unbind();
}

void Ball::update() {
  bind();
  createSphere(&points_, &indices_);
  unbind();
}

bool Ball::check(const vector& point) {
  auto dist = point - position;
  return glm::length(dist) <= radius;
}

bool Ball::check(const Ball& ball) {
  auto dist = ball.position - position;
  return glm::length(dist) <= radius + ball.radius;
}

void Ball::setup(Shader& sh) {
  sh.bind();
  bind();

  auto pos = sh.getAttribLocation("data");
  glEnableVertexAttribArray(pos);
  glVertexAttribPointer(pos, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), nullptr);

  // auto vel = sh.getAttribLocation("velocity");
  // glEnableVertexAttribArray(vel);
  // glVertexAttribPointer(vel, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float),
  //                       (const void*)(2 * sizeof(float)));

  unbind();
  sh.unbind();
}
