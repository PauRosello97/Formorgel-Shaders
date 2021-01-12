#version 150


in FragData {
  vec4 color;
} FragIn;

out vec4 fragColor;

void main() {
  fragColor = FragIn.color;
  //fragColor = vec4(1., 1., 0., 1.);
}