class Crosshair {
  //data
  int x, y;
  int radius, crossLength;
  int speed;
  boolean isFiring;
  
  //constructor
  Crosshair() {
    x = width/2;
    y = height/2;
    radius = 15;
    crossLength = 25;
    speed = 5;
    isFiring = false;
  }
  
  //behaviours
  void display() {
    stroke(255, 0, 0);
    strokeWeight(5);
    noFill();
    ellipse(x, y, radius*2, radius*2);
    line(x-crossLength, y, x+crossLength, y);
    line(x, y-crossLength, x, y+crossLength);
  }
  
  void move() {
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
    
    if (movingLeft) {
      x -= speed;
    }
    if (movingRight) {
      x += speed;
    }
    if (movingUp) {
      y -= speed;
    }
    if (movingDown) {
      y += speed;
    }
  }
  
  void fire() {
    if (key == ' ') {
      isFiring = true;
    }
  }
  
  void shake() {   
    
  }
  
  void focus() {
    
  }
}