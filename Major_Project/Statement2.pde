//System speaking...
class Statement2 extends Speech {
  Statement2() {
    super();
    x = width;
    y = 300;
    aSpeech = "please find it out!"; 
    textColor = color(0);
    xSpeed = -3;
  }
  
  void display() {    
    super.display();
  }
  
  void move() {
    int temp = xSpeed/2;
    if (x <= 0) {
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
      x = width;
      isFinished = false;
    }
  }
}