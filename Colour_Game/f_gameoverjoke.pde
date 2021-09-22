void gameoverjoke () {
//JOKE TEXT-------------------------------------------------------------------------------------------
  background(0);
  textFont(sans);
  textSize(100);
  fill(255);
  text("JOKES ON YOU", width/2, height/2 -200);
  text("NO PAUSE BUTTONS", width/2, height/2 +50);
  text("IN THIS HOUSE", width/2, height/2 +150);
  text("-5 HIGHSCORE HAH", width/2, height/2 +350);
  
}

void gameoverjokeClick () {
//RESET + HIGHSCORE - 5 + SCORE RESET------------------------------------------------------------------
  mode = INTRO;
  hs = hs - 5;
  s = 0;
  
}
