class Speech {
  //data
  int x, y;
  String aSpeech;
  int fontSize, speechWidth, speechHeight;
  color textColor;
  int xSpeed, ySpeed;
  boolean isShot;
  int speechNumber;
  
  //constructor
  //Speech() {
  //  x = 600;
  //  y = 200;
  //  aSpeech = "This is a demo.";
  //  fontSize = 40;
  //  speechWidth = int(textWidth(aSpeech));
  //  speechHeight = 40;
  //  textColor = color(0);
  //  xSpeed = -5;
  //  ySpeed = 0;
  //  isShot = false;
  //}
  
  Speech(int _speechNumber) {
    speechNumber = _speechNumber;
    x = 600;
    y = 100+speechNumber*40;
    aSpeech = "This is a demo.";
    fontSize = 40;
    speechWidth = int(textWidth(aSpeech));
    speechHeight = 40;
    textColor = color(0);
    xSpeed = -1*speechNumber;
    ySpeed = 0;
    isShot = false;
  }
  
  //behaviours
  void display() {
    textAlign(LEFT);
    textSize(fontSize);
    fill(textColor);
    text(aSpeech, x, y);
  }
  
  void move() {
    x += xSpeed;
    if (x <= 0) {
      x = width;
    }
  }
  
  void checkStatus() {
    
  }
}