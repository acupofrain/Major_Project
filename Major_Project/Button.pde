class Button {
  //data
  int x, y, buttonLength, buttonWidth;
  color buttonColor, textColor;
  String buttonText;
  
  //constructor
  Button(int y) {
    x = width/2;
    this.y = y;
    buttonLength = 200;
    buttonWidth = 30;
    buttonColor = color(255);
    textColor = color(0);
  }
  
  //behaviours
  void display(String text) {
    buttonText = text;
    
    rectMode(CENTER);
    fill(buttonColor);
    rect(x, y, buttonLength, buttonWidth);
    
    textAlign(CENTER);
    textSize(30);
    fill(textColor);
    text(buttonText, x, y);
  }
}