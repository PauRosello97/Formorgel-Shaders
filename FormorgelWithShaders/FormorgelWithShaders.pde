
import com.jogamp.opengl.GL3;

PShader shader;
PShader yellowShader;

void settings() {
  size(800, 800, P2D);
}

void setup() {
  shader = new GeometryShader(this, "Vertex.glsl", "Geometry.glsl", "Fragment.glsl");
  yellowShader = loadShader("YellowShader.glsl");
}

void draw() {
  background(0);  
  
  shader(shader);
  
  beginShape();
    vertex(0.1, 0.1);
    vertex(0.0, 0.0);
    vertex(0.2, 0.02);
    vertex(0.3, 0.4);
  endShape();
  
}

void keyPressed(){
  saveFrame();
}
