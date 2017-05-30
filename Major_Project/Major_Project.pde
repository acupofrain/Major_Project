//Project Name:      Arrays of Objects (Major Project Milestone)
//
//Author:      Wendy Han
//
//Created Date:      2017/05/12
//
//Description:      I used this assignment as a milestone for my major project. The things that I have included
//                  in this version: a crosshair which can be controled by the direction keys on the keyboard, 
//                  multiple speeches(enemies) floating through the screen at different height and speed. I will
//                  continue working on the collision with text part in the rest of this month.

//This link is helpful: https://brilliant.org/wiki/truth-tellers-and-liars/


Crosshair theCrosshair;
Speech[] theSpeech;
boolean movingLeft, movingRight, movingUp, movingDown, isFiring;
int state;

void setup() {
  size(800, 450);
  theCrosshair = new Crosshair();
  
  //theSpeech = new Speech[6];
  //for (int i=0; i<theSpeech.length; i++) {
  //  theSpeech[i] = new Speech(i+1);
  //}
  
  theSpeech = new Speech[3];
  theSpeech[0] = new Statement1();
  theSpeech[1] = new Statement2();
  theSpeech[2] = new Statement3();
  
  movingLeft = false;
  movingRight = false;
  movingUp = false;
  movingDown = false;
  isFiring = false;
  
  state = 0;
}

void draw() {
  background(255);
  
  //for (int i=0; i<theSpeech.length; i++) {
  //  theSpeech[i].move();
  //  theSpeech[i].display();
  //}    
  
  if (state == 0) {
    theSpeech[0].move();
    theSpeech[0].display();
    if (theSpeech[0].isFinished) {
      state += 1;
    }
  }
  if (state == 1) {
    theSpeech[1].move();
    theSpeech[1].display();
    if (theSpeech[1].isFinished) {
      state += 1;
    }
  }  
  if (state == 2) {
    theSpeech[2].move();
    theSpeech[2].display();
    if (theSpeech[2].isFinished) {
      state += 1;
    }
  }  
  
  theCrosshair.move();
  theCrosshair.display();
  
  for (int i=0; i<theSpeech.length; i++) {
    theSpeech[i].checkStatus(isFiring, theCrosshair.x, theCrosshair.y);
  }
  
  //println(str(theCrosshair.x));
  //println(str(theCrosshair.y));
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      movingLeft = true;
    }
    else if (keyCode == RIGHT) {
      movingRight = true;
    }
    else if (keyCode == UP) {
      movingUp = true;
    }
    else if (keyCode == DOWN) {
      movingDown = true;
    }
  }
  
  if (key == ' ') {
    isFiring = true;
  } 
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      movingLeft = false;
    }
    else if (keyCode == RIGHT) {
      movingRight = false;
    }
    else if (keyCode == UP) {
      movingUp = false;
    }
    else if (keyCode == DOWN) {
      movingDown = false;
    }
  }
  
  if (key == ' ') {
   isFiring = false;
  } 
}