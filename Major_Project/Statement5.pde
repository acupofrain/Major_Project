//Green speaking...
class Statement5 extends Speech {
  Statement5() {
    super();
    x = 200;
    y = 0;
    aSpeech = "Red is the liar!"; 
    textColor = color(6, 139, 203);
    xSpeed = 0;
    ySpeed = 5;
  }
  
  
  void display() {
    super.display();    
  }
  
  void move() { 
    int temp = ySpeed/2;
    if (y >= height) {
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
}