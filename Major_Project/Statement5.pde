//Green speaking...
class Statement5 extends Speech {
  Statement5() {
    super();
    x = 250;
    y = height;
    aSpeech = "Red is the liar!"; 
    textColor = color(70, 198, 120);
    xSpeed = 0;
    ySpeed = -5;
  }
  
  
  void display() {
    super.display();    
  }
  
  void move() { 
    int temp = ySpeed/2;
    if (y <= 50) {
      isFinished = true;
    } else if ((y>height/3) && (y<(height/3)*2)) {
      y += temp;
    } else {
      y += ySpeed;
    }
  }
  
  void checkStatus(boolean isFiring, int crosshairX, int crosshairY) {
    super.checkStatus(isFiring, crosshairX, crosshairY);
  }
  
  void replay() {
    if (key == ENTER) {
      y = height;
      isFinished = false;
    }
  }
}