
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
  
  beginShape(TRIANGLE);
    vertex(0.1, 0.1);
    vertex(0.0, 0.0);
    vertex(0.001, 0.02);
  endShape();
  
}

void keyPressed(){
  saveFrame();
}
