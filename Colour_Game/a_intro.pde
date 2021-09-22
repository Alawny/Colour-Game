void intro () {
  
//INTRO GIF DISPLAY AND LOOP--------------------------------------------------------------
  image(gif[frame], 0, 0, width, height);
  frame++;
  if (frame == nFrames) frame = 0;
//INTRO TEXT "COLOUR GAME"----------------------------------------------------------------
  textSize(150);
  textFont(sans);
  fill(255);
  text("COLOUR GAME", width/2, height/2 - 200);
 
//START BUTTON----------------------------------------------------------------------------
  fill(255);
  strokeWeight(10);
  rect(300, 600, 400, 200);
   textSize(iTSize);
  fill(iTColor);
  text("START", 500, 700);
  
if(mouseX > 300 && mouseX < 700 && mouseY > 600 && mouseY < 800) {
  iTColor = 150;
  iTSize = 175;} 
else {
  iTColor = 0;
  iTSize = 150;}

}

void introClick () {
  if(mouseX > 300 && mouseX < 700 && mouseY > 600 && mouseY < 800) mode = DIFFICULTY;
//RESET TIMER-----------------------------------------------------------------------------
  counter = 0;
  timer = 700;
}
