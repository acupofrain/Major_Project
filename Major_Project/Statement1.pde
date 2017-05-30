//System speaking...
class Statement1 extends Speech {
  Statement1() {
    super();
    x = -100;
    y = 200;
    aSpeech = "There is only one liar,"; 
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