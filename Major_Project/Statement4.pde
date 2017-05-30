//Red speaking...
class Statement4 extends Speech {
  Statement4() {
    super();
    x = width;
    y = 250;
    aSpeech = "Blue is the liar!"; 
    textColor = color(222, 16, 40);
    xSpeed = -5;
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
}