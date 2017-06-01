class Timer {
  //data
  int x, y;
  int passedTime, timeLimit, remainingTime;
  int minute, second, rest;
  
  //constructor
  Timer() {
    x = 600;
    y = 50;
    timeLimit = 15 * 60 * 1000;
  }
  
  //behaviours
  void display() {
    passedTime = millis();
    remainingTime = timeLimit - passedTime;
    minute = remainingTime/(60*1000);
    second = (remainingTime - minute*60*1000)/1000;
    rest = remainingTime - minute*60*1000 - second*1000;
    
    textAlign(LEFT);
    textSize(20);
    fill(2, 209, 141);
    text(minute, x, y);
    //x += int(textWidth( )));
    text(":", x, y);
    
  }
}