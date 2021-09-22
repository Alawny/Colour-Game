void difficulty () {
  background(0);
//BOXES--------------------------------------------------------------------------------------------------------
  fill(255);
  rect(300, 700, 400, 200);
  rect(300, 400, 400, 200);
  rect(300, 100, 400, 200);
//EASY TEXT----------------------------------------------------------------------------------------------------
  textFont(sans);
  textSize(150);
  fill(dTColorE);
  text("EASY", width/2, 200);
   if(mouseX > 300 && mouseX < 700 && mouseY > 100 && mouseY < 300) {dTColorE = 150;} else {dTColorE = 0;}
//MEDIUM TEXT--------------------------------------------------------------------------------------------------
  textFont(sans);
  textSize(150);
  fill(dTColorM);
  text("MEDIUM", width/2, 500);
   if(mouseX > 300 && mouseX < 700 && mouseY > 400 && mouseY < 600) {dTColorM = 150;} else {dTColorM = 0;}
//HARD TEXT----------------------------------------------------------------------------------------------------
  textFont(sans);
  textSize(150);
  fill(dTColorH);
  text("HARD", width/2, 800);
  if(mouseX > 300 && mouseX < 700 && mouseY > 700 && mouseY < 900) {dTColorH = 150;} else {dTColorH = 0;}
  
  
}

void difficultyClick () {
//EASY MODE----------------------------------------------------------------------------------------------------
  if(mouseX > 300 && mouseX < 700 && mouseY > 100 && mouseY < 300) {
  mode = GAME; dif = 20;
}
//MEDIUM MODE--------------------------------------------------------------------------------------------------
  if(mouseX > 300 && mouseX < 700 && mouseY > 400 && mouseY < 600) {
  mode = GAME; dif = 8;
}
//HARD MODE----------------------------------------------------------------------------------------------------
  if(mouseX > 300 && mouseX < 700 && mouseY > 700 && mouseY < 900) {
  mode = GAME; dif = 2;
}
  
}
