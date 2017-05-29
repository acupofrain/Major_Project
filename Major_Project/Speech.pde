class Speech {
  //data
  int x, y;
  String aSpeech;
  int fontSize, speechWidth, speechHeight;
  color textColor;
  int xSpeed, ySpeed;
  boolean isShot;
  //int speechNumber;
  int crosshairX, crosshairY;
  boolean isFinished;
  float rotateAngle;
  
  //constructor
  Speech() {
    x = width;
    y = height/2;
    aSpeech = "This is a demo.";
    fontSize = 40;   
    speechHeight = 40;
    textColor = color(0);
    xSpeed = -5;
    ySpeed = 0;
    isFinished = false;
    rotateAngle = 0;
  }
  
  //Speech(int _speechNumber) {
  //  speechNumber = _speechNumber;
  //  x = 600;
  //  y = 100+speechNumber*40;
  //  aSpeech = "This is a demo.";
  //  fontSize = 40;
  //  speechWidth = int(textWidth(aSpeech));
  //  speechHeight = 40;
  //  textColor = color(0);
  //  xSpeed = -1*speechNumber;
  //  ySpeed = 0;
  //  isShot = false;
  //}
  
  //behaviours
  void display() {
    textAlign(LEFT);
    textSize(fontSize);
    fill(textColor);
    text(aSpeech, x, y);
  }
  
  void move() {
    int temp = xSpeed/2;
    
    if (x <= 0) {
      isFinished = true;
    } else if ((x>width/4) && (x<(width/4)*2)) {
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
      if ((crosshairX > x) && (crosshairX < x+speechWidth) && (crosshairY > y-speechHeight) && (crosshairY < y)) {
        textColor = color(0);
        xSpeed = 0;
        ySpeed = 0;
      } else {
        println("wrong!");
      }
    }
  }
}