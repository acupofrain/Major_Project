//Purple speaking...
class Statement6 extends Speech {
  Statement6() {
    super();
    x = -100;
    y = 200;
    aSpeech = "Green is not the liar!"; 
    textColor = color(0);
    xSpeed = 5;
  }
  
  void display() {
    super.display();
  }
  
  void move() {
    int temp = xSpeed/2;    
    if (x >= 600) {
      isFinished = true;
    } else if ((x>width/4) && (x<(width/4)*2)) {
      x += temp;
    } else {
      x += xSpeed;
    }
  }
  
  void checkStatus(boolean isFiring, int crosshairX, int crosshairY) {
    super.checkStatus(isFiring, crosshairX, crosshairY);
  }
}