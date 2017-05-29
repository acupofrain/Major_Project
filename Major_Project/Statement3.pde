class Statement3 extends Speech {
  Statement3() {
    super();
    x = width;
    y = 20;
    aSpeech = "I'm NO.3"; 
    textColor = color(105, 232, 172);
    xSpeed = -1;
    rotateAngle = radians(25);
  }
  
  
  void display() {
    //pushMatrix();
    rotate(rotateAngle);
    super.display();    
    //popMatrix();
  }
  
  void move() { 
    super.move(); 
  }
  
  void checkStatus(boolean isFiring, int crosshairX, int crosshairY) {
    super.checkStatus(isFiring, crosshairX, crosshairY);
  }
}

//Might need help:
//No response at all when shooting the tilted speech
//Possible reason:
//Send unrotated crosshair x-cor and y-cor to determine the status of the speech
//Possible solution:
//Send rotated crosshair x-cor and y-cor to check without actually rotating the crosshair