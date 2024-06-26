#include "shader.h"

#include <filesystem>
#include <glad/glad.h>

#include <fstream>
#include <iostream>
#include <string>

static void attachSources(unsigned int type, unsigned int const id,
                          const std::string& path) {
  auto shader = glCreateShader(type);
  std::ifstream shaderFile(path);
  std::string shaderSource((std::istreambuf_iterator<char>(shaderFile)),
                           std::istreambuf_iterator<char>());
  const char* shaderSourcePtr = shaderSource.c_str();
  glShaderSource(shader, 1, &shaderSourcePtr, nullptr);
  glCompileShader(shader);

  int success;
  char infoLog[512];
  glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
  if (!success) {
    glGetShaderInfoLog(shader, 512, nullptr, infoLog);
    std::cerr << "Shader compilation error: " << infoLog << std::endl;
  }

  glAttachShader(id, shader);
  glDeleteShader(shader);
}

// Shader::Shader(const std::string& vertexPath, const std::string& geometryPath,
//                const std::string& fragmentPath)
//     : _id(0) {
//   _id = glCreateProgram();
//   attachSources(GL_VERTEX_SHADER, _id, vertexPath);
//   attachSources(GL_GEOMETRY_SHADER, _id, geometryPath);
//   attachSources(GL_FRAGMENT_SHADER, _id, fragmentPath);
//
//   glLinkProgram(_id);
//   int success;
//   char infoLog[512];
//   glGetProgramiv(_id, GL_LINK_STATUS, &success);
//   if (!success) {
//     glGetProgramInfoLog(_id, 512, nullptr, infoLog);
//     std::cerr << "Shader linking error: " << infoLog << std::endl;
//   }
// }

Shader::Shader(const std::string& vertexPath, const std::string& fragmentPath)
    : _id(0) {
  _id = glCreateProgram();
  attachSources(GL_VERTEX_SHADER, _id, vertexPath);
  attachSources(GL_FRAGMENT_SHADER, _id, fragmentPath);

  glLinkProgram(_id);
  int success;
  char infoLog[512];
  glGetProgramiv(_id, GL_LINK_STATUS, &success);
  if (!success) {
    glGetProgramInfoLog(_id, 512, nullptr, infoLog);
    std::cerr << "Shader linking error: " << infoLog << std::endl;
  }
}

Shader::~Shader() { glDeleteProgram(_id); }

void Shader::bind() const { glUseProgram(_id); }

void Shader::unbind() const { glUseProgram(0); }

void Shader::setUniform3f(const std::string& name, glm::vec3 value) const {
  glUniform3f(getUniformLocation(name), value.x, value.y, value.z);
}

void Shader::setUniform1f(const std::string& name, float value) const {
  glUniform1f(getUniformLocation(name), value);
}

int Shader::getAttribLocation(const std::string& name) const {
  auto location = glGetAttribLocation(_id, name.c_str());
  if (location == -1)
    std::cerr << "Warning: attribute '" << name << "' doesn't exist!"
              << std::endl;
  return location;
}

int Shader::getUniformLocation(const std::string& name) const {
  if (_uniformLocationCache.find(name) != _uniformLocationCache.end())
    return _uniformLocationCache[name];

  int location = glGetUniformLocation(_id, name.c_str());
  if (location == -1)
    std::cerr << "Warning: uniform '" << name << "' doesn't exist!"
              << std::endl;
  _uniformLocationCache[name] = location;
  return location;
}
