#version 150

layout (triangles) in;
layout (triangle_strip, max_vertices = 3) out;
 
out FragData {
  vec4 color;
} FragOut;
 
void main(){

  FragOut.color = vec4(1., 0., 0., 1.);

  for(int i=0; i<3; i++){
    
    gl_Position = gl_in[i].gl_Position;
    EmitVertex();
  }
  
  EndPrimitive();
}