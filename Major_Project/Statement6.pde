//Purple speaking...
class Statement6 extends Speech {
  Statement6() {
    super();
    x = -40;
    y = 300;
    aSpeech = "Green is not the liar!"; 
    textColor = color(155, 105, 209);
    xSpeed = 5;
  }
  
  void display() {
    super.display();
  }
  
  void move() {
    int temp = xSpeed/2;    
    if (x >= 650) {
      isFinished = true;
    } else if ((x>width/4) && (x<width/2)) {
      x += temp;
    } else {
      x += xSpeed;
    }
  }
  
  void checkStatus(boolean isFiring, int crosshairX, int crosshairY) {
    super.checkStatus(isFiring, crosshairX, crosshairY);
  }
  
  void replay() {
    if (key == ENTER) {
      x = -40;
      isFinished = false;
    }
  }
}