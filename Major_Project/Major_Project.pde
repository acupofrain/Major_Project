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


Crosshair theCrosshair; //<>//
Speech[] theSpeech;
Timer theTimer;
Button[] theButton;
boolean movingLeft, movingRight, movingUp, movingDown, isFiring;
int menu, state;

void setup() {
  size(800, 450);
  theCrosshair = new Crosshair();
  theTimer = new Timer();
  
  theButton = new Button[3];
  for (int i=0; i<theButton.length; i++) {
   theButton[i] = new Button(250+i*50);
  }
  
  theSpeech = new Speech[6];
  theSpeech[0] = new Statement1();
  theSpeech[1] = new Statement2();
  theSpeech[2] = new Statement3();
  theSpeech[3] = new Statement4();
  theSpeech[4] = new Statement5();
  theSpeech[5] = new Statement6();
  
  movingLeft = false;
  movingRight = false;
  movingUp = false;
  movingDown = false;
  isFiring = false; //<>//
  
  state = 0;
  menu = 0;
}

void draw() {
  if (menu == 0) { //<>//
    background(175);
    theButton[0].display("Instruction");
    theButton[1].display("Demo Version");
    theButton[2].display("Story Mode");
    
    theCrosshair.move();
    theCrosshair.display();
  }
  
  if (menu == 1) {
    background(255);
    theTimer.display();
    
    //for (int i=0; i<theSpeech.length; i++) {
    //  theSpeech[i].move();
    //  theSpeech[i].display();
    //}    
  
    if (state == 0) {
      theSpeech[0].move();
      theSpeech[1].move();
      theSpeech[0].display();
      theSpeech[1].display();
      if (theSpeech[0].isFinished || theSpeech[1].isFinished) {
        state += 1;
      }
      //else {
      //  theSpeech[0].checkStatus(isFiring, theCrosshair.x, theCrosshair.y);
      //  theSpeech[1].checkStatus(isFiring, theCrosshair.x, theCrosshair.y);
      //}
    }
    if (state == 1) {
      theSpeech[2].move();
      theSpeech[2].display();
      if (theSpeech[2].isFinished) {
        state += 1;
      }
    }  
    if (state == 2) {
      theSpeech[3].move();
      theSpeech[3].display();
      if (theSpeech[3].isFinished) {
        state += 1;
      }
    }  
    if (state == 3) {
      theSpeech[4].move();
      theSpeech[4].display();
      if (theSpeech[4].isFinished) {
        state += 1;
      }
    }  
    if (state == 4) {
      theSpeech[5].move();
      theSpeech[5].display();
      if (theSpeech[5].isFinished) {
        state += 1;
      }
    }  
  
    theCrosshair.move();
    theCrosshair.display();
  
    for (int i=0; i<theSpeech.length; i++) {
      if (theSpeech[i].isFinished == false) {
        theSpeech[i].checkStatus(isFiring, theCrosshair.x, theCrosshair.y);
        if (theSpeech[i].rightAnswer) {
          menu += 2;
        }
        else if (theSpeech[i].wrongAnswer) {
          menu += 3;
        }
      }
    }
    
    if (state == 5) {
      menu += 1;
    }
  }
  //println(str(theCrosshair.x)); //<>//
  //println(str(theCrosshair.y));
  
  if (menu == 2) {
    background(57, 186, 224);
    fill(255);
    textSize(30);
    text("Press enter to replay", 250, 200);
    //println(state);
    //println(menu);
  }
  
  if (menu == 3) {
    background(141, 198, 10);
    fill(255);
    textSize(30);
    text("conguatulations!", 250, 200);
  }
  
  if (menu == 4) {
    background(255, 0, 0);
    fill(255);
    textSize(30);
    text("You're wrong!", 250, 200);
  }
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

  if (key == ENTER) {
    menu = 1;
    state = 0;
    theTimer.begin();
    for (int i=0; i<theSpeech.length; i++) {
      theSpeech[i].replay();
    }
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