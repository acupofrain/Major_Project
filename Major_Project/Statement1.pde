class Statement1 extends Speech {
  Statement1() {
    super();
    y = 250;
    aSpeech = "I'm NO.1"; 
    textColor = color(255, 116, 3);
    xSpeed = -5;
  }
  
  void display() {
    super.display();
  }
  
  void move() {
    super.move(); 
  }
  
  void checkStatus(boolean isFiring, int crosshairX, int crosshairY) {
    super.checkStatus(isFiring, crosshairX, crosshairY);
  }
}