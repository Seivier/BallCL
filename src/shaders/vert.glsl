#version 400

in vec2 data;

uniform float scale;
uniform vec3 position;

void main()
{
  vec2 scaled = data*scale;
  vec3 realPos = vec3(scaled, 0.0) + position;
  gl_Position = vec4(realPos, 1.0);
}

