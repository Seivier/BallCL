#ifndef BALLCL_SHADER_H_
#define BALLCL_SHADER_H_

#include <string>
#include <unordered_map>
#include <glm/vec3.hpp>

class Shader {
 private:
  unsigned int _id;
  mutable std::unordered_map<std::string, int> _uniformLocationCache;

 public:
  // Shader(const std::string& vertexPath, const std::string& geometryPath,
  // const std::string& fragmentPath);
  Shader(const std::string& vertexPath, const std::string& fragmentPath);
  ~Shader();

  void bind() const;
  void unbind() const;

  void setUniform3f(const std::string& name, glm::vec3 value) const;
  void setUniform1f(const std::string& name, float value) const;
  int getAttribLocation(const std::string& name) const;

 private:
  int getUniformLocation(const std::string& name) const;
};

#endif  // BALLCL_SHADER_H_
