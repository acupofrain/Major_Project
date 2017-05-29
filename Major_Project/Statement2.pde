class Statement2 extends Speech {
  Statement2() {
    super();
    x = 200;
    y = height;
    aSpeech = "I'm NO.2"; 
    textColor = color(81, 3, 255);
    xSpeed = 0;
    ySpeed = -5;
  }
  
  void display() {    
    super.display();
  }
  
  void move() {
    int temp = ySpeed/2;
    if (y <= 0) {
      isFinished = true;
    } else if ((y>height/4) && (y<(height/4)*2)) {
      y += temp;
    } else {
      y += ySpeed;
    }
  }
  
  void checkStatus(boolean isFiring, int crosshairX, int crosshairY) {
    super.checkStatus(isFiring, crosshairX, crosshairY);
  }
}