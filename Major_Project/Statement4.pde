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
    isShot = isFiring;
    this.crosshairX = crosshairX;
    this.crosshairY = crosshairY;
    speechWidth = int(textWidth(aSpeech));
    
    if (isShot) {
      if ((crosshairX > x) && (crosshairX < x+speechWidth) && (crosshairY > y-speechHeight) && (crosshairY < y) && isFinished == false) {
        textColor = color(198, 104, 10);
        xSpeed = 0;
        ySpeed = 0;
        println("correct!");
        rightAnswer = true;
      } 
    }    
  }
  
  void replay() {
    if (key == ENTER) {
      x = width;
      isFinished = false;
    }
  }
}