//seperates different clicks depending on mode


void mouseReleased () {


  if (mode == INTRO) {
    introClick();
  } else if (mode == GAME) {
    gameClick();
  } else if (mode == GAMEOVER) {
    gameoverClick();
  } else if (mode == DIFFICULTY) {
    difficultyClick();
  } else if (mode == GAMEOVERJOKE) {
    gameoverjokeClick();
  }
}

  
