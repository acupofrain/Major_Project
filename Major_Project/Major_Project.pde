Crosshair theCrosshair;

void setup() {
  size(800, 450);
  theCrosshair = new Crosshair();
}

void draw() {
  background(255);
  
  theCrosshair.display();
}

void keyPressed() {
  theCrosshair.move();
}