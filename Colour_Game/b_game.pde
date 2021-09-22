void game () {
//BACKGROUND-------------------------------------------------------------------------------
  background(0);
  fill(255);
  rect(0, 0, 500, 1000);
//TRUE TEXT--------------------------------------------------------------------------------
  textFont(sans);
  textSize(gTSizeT);
  fill(gTColorT);
  text("YUS", width/2 - 250, height/2 - 300);
 if(mouseX < 500 && dist(50, 50, mouseX, mouseY) > 37.5) {
    gTColorT = 150;
    gTSizeT = 225;
  } else {
  gTColorT = 0;
  gTSizeT = 200;
  }
  
//FALSE TEXT--------------------------------------------------------------------------------
  textFont(sans);
  textSize(gTSizeF);
  fill(gTColorF);
  text("NAH", width/2 + 250, height/2 - 300);
 if(mouseX > 500) { 
  gTColorF = 150;
  gTSizeF = 225;
  } else {
  gTColorF = 255;
  gTSizeF = 200;
}
//QUESTION----------------------------------------------------------------------------------
  textSize(200);
  fill(colors[rColor]);
  text(words[rWord], width/2, height/2);
  
//TIMER-------------------------------------------------------------------------------------
  noStroke();
  counter++;
  timer = timer - counter/dif;
  fill(150);
  rect(300, 680, 400, 140);
  fill(colors[rColor]);
  rect(325, 700, timer/2, 100);
  if(timer <= 0) mode = GAMEOVER;
 
//PAUSE-------------------------------------------------------------------------------------
 fill(0);
 circle(50, 50, 75);
 fill(pause);
 rect(30, 25, 40, 50);
 fill(0);
 rect(40, 25, 20, 50);
 if (dist(50, 50, mouseX, mouseY) < 37.5) {pause = 150;}else {pause = 255;}
}

void gameClick () {
//FALSE SELECTION + GENERATE NEW------------------------------------------------------------
 if(mouseX > 500) { gTSizeF = 200;
 if(rWord == rColor) mode = GAMEOVER;
 if(rWord != rColor) {fifty = 5; fifty = int(random(0,4)); s++; counter = 0; timer = 700;}
 }
 
//TRUE SELECTION + GENERATE NEW-------------------------------------------------------------
 if(mouseX < 500 && dist(50, 50, mouseX, mouseY) > 37.5) { gTSizeT = 200;
 if(rWord == rColor) {fifty = 5; fifty = int(random(0,4)); s++; counter = 0; timer = 700;}
 if(rWord != rColor) mode = GAMEOVER;
 }
 
//PUZZLE GENERATOR--------------------------------------------------------------------------
 if(fifty == 0) {
    rWord = int(random(0,6));
    rColor = rWord;
  }else if(fifty == 1) {
    rWord = int(random(0,6));
    rColor = rWord;
  }else if(fifty == 2) {
    rWord = int(random(0,6));
    rColor = int(random(0,6));
    while(rWord == rColor) {
      rWord = int(random(0,6));
      rColor = int(random(0,6));
      }
  }else if(fifty == 3) {
    rWord = int(random(0,6));
    rColor = int(random(0,6));
    while(rWord == rColor) {
      rWord = int(random(0,6));
      rColor = int(random(0,6));
      
    }
  }
//PAUSE JOKE---------------------------------------------------------------------------------
  if (dist(50, 50, mouseX, mouseY) < 37.5) mode = GAMEOVERJOKE;
}
