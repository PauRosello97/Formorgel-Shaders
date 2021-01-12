#version 150

layout (triangles) in;
layout (triangle_strip, max_vertices = 5) out;
 
out FragData {
  vec4 color;
} FragOut;
 
void main(){

  // x, y

  //BLUE BOTTOM LEFT
  FragOut.color = vec4(0., 0., 1., 1.);
  gl_Position = gl_in[0].gl_Position + vec4( -1.0, -1.0, 0.0, 0.0);
  EmitVertex();

  //RED TOP RIGHT
  FragOut.color = vec4(1., 0., 0., 1.);
  gl_Position = gl_in[0].gl_Position + vec4( 0.0, -0.5, 0.0, 0.0);
  EmitVertex();

  //GREEN BOTTOM LEFT
  FragOut.color = vec4(0.0, 1.0, 0.0, 1.0);
  gl_Position = gl_in[0].gl_Position + vec4( 1.0, -1.0, 0.0, 0.0);
  EmitVertex();

  FragOut.color = vec4(1.0, 1.0, 0.0, 1.0); 
  gl_Position = gl_in[0].gl_Position + vec4( -1.0, 1.0, 0.0, 0.0);
  EmitVertex();


  //CUSTOM TOP LEFT
  /*
  FragOut.color = VertexIn[0].color;
  gl_Position = gl_in[0].gl_Position + vec4( -1.0, 1.0, 0.0, 0.0);
  EmitVertex();
  */
  
  EndPrimitive();
}