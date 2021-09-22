void gameover () {
  background(255,0,0);
  
//GAMEOVER+SCORE+HIGHSCORE TEXT---------------------------------------------------------------------------------------
  textFont(sans);
  fill(255);
  textSize(150);
  text("SCORE: "+s, width/2, height/2 + 100);
  text("HIGH SCORE: "+hs, width/2, height/2 + 300);
  textSize(250);
  text("GAMEOVER", width/2, height/2 - 200);
//HIGHSCORE CALCULATOR------------------------------------------------------------------------------------------------
  if(s >= hs) {
    hs = s;
    textFont(sans);
    fill(255);
    textSize(50);
    text("NEW HIGH SCORE!", width/2, height/2 - 400);
  }
}

void gameoverClick () {
//INTRO + SCORE RESET-------------------------------------------------------------------------------------------------
  mode = INTRO;
  s = 0;
}
