#version 150

layout (triangles) in;
layout (triangle_strip, max_vertices = 3) out;
 
out FragData {
  vec4 color;
} FragOut;
 
void main(){

  for(int i=0; i<gl_in.length(); i++){
    if(i%3==0){
      FragOut.color = vec4(1., 0., 0., 1.);
    }else if(i%3==1){
      FragOut.color = vec4(0., 1., 0., 1.);
    }else if(i%3==2){
      FragOut.color = vec4(0., 0., 1., 1.);
    }
    gl_Position = gl_in[i].gl_Position;
    EmitVertex();
  }
  
  EndPrimitive();
}