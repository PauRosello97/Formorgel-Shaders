
import com.jogamp.opengl.GL3;

PShader shader;

void settings() {
  size(800, 800, P2D);
}

void setup() {
  shader = new GeometryShader(this, "Vertex.glsl", "Geometry.glsl", "Fragment.glsl");
}

void draw() {
  background(0);  
  
  shader(shader); 
  rect(0, 0, width, height);
}
