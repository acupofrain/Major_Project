Crosshair theCrosshair;
boolean movingLeft, movingRight, movingUp, movingDown;

void setup() {
  size(800, 450);
  theCrosshair = new Crosshair();
  movingLeft = false;
  movingRight = false;
  movingUp = false;
  movingDown = false;
}

void draw() {
  background(255);
  
  theCrosshair.move();
  theCrosshair.display();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      movingLeft = true;
    }
    else if (keyCode == RIGHT) {
      movingRight = true;
    }
    else if (keyCode == UP) {
      movingUp = true;
    }
    else if (keyCode == DOWN) {
      movingDown = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      movingLeft = false;
    }
    else if (keyCode == RIGHT) {
      movingRight = false;
    }
    else if (keyCode == UP) {
      movingUp = false;
    }
    else if (keyCode == DOWN) {
      movingDown = false;
    }
  }
}