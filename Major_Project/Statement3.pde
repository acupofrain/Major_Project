//Blue speaking...
class Statement3 extends Speech {
  Statement3() {
    super();
    x = 200;
    y = 0;
    aSpeech = "Purple is not the liar!"; 
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
  
  void replay() {
    if (key == BACKSPACE) {
      y = 0;
      isFinished = false;
    }
  }
}

//Might need help:
//No response at all when shooting the tilted speech
//Possible reason:
//Send unrotated crosshair x-cor and y-cor to determine the status of the speech
//Possible solution:
//Send rotated crosshair x-cor and y-cor to check without actually rotating the crosshair