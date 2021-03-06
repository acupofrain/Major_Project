class Speech {
  //data
  int x, y;
  String aSpeech;
  int fontSize, speechWidth, speechHeight;
  color textColor;
  int xSpeed, ySpeed;
  boolean isShot;
  //int speechNumber;
  boolean isFinished;
  float rotateAngle;
  boolean rightAnswer, wrongAnswer;
  
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
    rightAnswer = false;
    wrongAnswer = false;
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
    //this.crosshairX = crosshairX;
    //this.crosshairY = crosshairY;
    speechWidth = int(textWidth(aSpeech));
    
    //to test
    rectMode(CORNER);
    rect(x, y, speechWidth, -speechHeight);
    
    if (isShot) {
      if ((crosshairX > x) && (crosshairX < x+speechWidth) && (crosshairY > y-speechHeight) && (crosshairY < y) && isFinished == false) {
        textColor = color(198, 104, 10);
        println("wrong!");
        wrongAnswer = true;
      } 
      //else {
      //  println("not here!");
      //}
    }
  }
  
  void replay() {
    if (key == BACKSPACE) {
      x = width;
      isFinished = false;
    }
  }
}