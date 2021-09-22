/*
Alan Lu
Sept 17

This is the Color Game, its a cool game.

Starting: Press the "START" button to go to the difficulty selection screen. pick between "EASY(3 seconds)", "MEDIUM(2 seconds)", and "HARD(1 second)" to begin

Objective: a random word and color will generate, if the two matches, you answer "YUS", if not, answer "NAH"
           if by chance you guess wrong or the timer runs out, you will lose

The game will keep track of your high score for you

P.S. dont try to cheat the game by pausing, this is a warning

*/

//INTRO GIF VARIABLES-----------------------------------------------------------------------

  PImage[] gif; //ARRAY FOR THE FRAMES
  int nFrames; //NUMBER OF FRAMES
  int frame; //FRAME

//MODE VARIABLES--------------------------------------------------------------------------

  int mode;
  final int INTRO = 0;
  final int GAME = 1;
  final int GAMEOVER = 2;
  final int DIFFICULTY = 3;
  final int GAMEOVERJOKE = 4;

//TEXT VARIABLES-------------------------------------------------------------------------------

  //FONT
  PFont sans; //FONT "I HATE COMIC SANS"

  //INTRO TEXT VARIABLES
  int iTColor; //INTRO TEXT COLOR
  int iTSize; //INTRO TEXT SIZE
  
  //GAME TEXT VARIABLES
  int gTColorT; //GAME TEXT COLOR TRUE
  int gTColorF; //GAME TEXT COLOR FALSE
  int gTSizeT; //GAME TEXT SIZE TRUE
  int gTSizeF; //GAME TEXT SIZE FALSE
  
//GAME VARIABLES--------------------------------------------------------------------------
  
  //ARRAYS
  String[] words;
  color[] colors;
  
  //COLOR VARIABLES
  color red = (#FF0000);
  color green = (#43BC08);
  color blue = (#000EF5);
  color purple = (#A910B4);
  color orange = (#FF9408);
  color cyan = (#62FBFF);
  
  //RANDOM WORD COLOR VARIABLES
  int rWord; //RANDOM WORD
  int rColor; //RANDOM COLOR
  
  //VARIABLE FOR FIFTY/FIFTY
  int fifty; //FIFTY/FIFTY VARIABLE
  
  //TIMER
  int counter; // FRAME COUNTER
  int timer; //TIMER BAR SIZE
  
  //PAUSE
  int pause; //PAUSE BUTTON COLOR

//GAMEOVER VARIABLES----------------------------------------------------------------------
  int s; //SCORE
  int hs; //HIGH SCORE
  
//DIFFUCULTY VARIABLES-----------------------------------------------------------------------
  int dif; //DIFFICULTY VARIABLE
  int dTColorE; //DIFFICULTY TEXT COLOR EASY
  int dTColorM; //DIFFICULTY TEXT COLOR MEDIUM
  int dTColorH; //DIFFICULTY TEXT COLOR HARD

//GLOBAL SETTINGS-------------------------------------------------------------------------
void setup () {
  size(1000, 1000);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  sans = createFont("IHATCS__.TTF", 200); //FONT NAME = "I HATE COMIC SANS"
  
//INTRO----------------------------------------------------------------------------------------

  //INTRO TEXT
  iTColor = 0; //INTRO TEXT COLOR
  iTSize = 150; //INTRO TEXT SIZE
  
  //INTRO GIF SETUP
  nFrames = 83;
  gif = new PImage[nFrames];

  int img = 0;
  while (img < nFrames) {
     gif[img] = loadImage("frame_"+img+"_delay-0.05s.gif");
     img++;
  }
  
//DIFFICULTY--------------------------------------------------------------------------------------
dTColorE = 0; //DIFFICULTY TEXT COLOR EASY
dTColorM = 0; //DIFFICULTY TEXT COLOR MEDIUM
dTColorH = 0; //DIFFICULTY TEXT COLOR HARD

//GAME---------------------------------------------------------------------------------------------------------------------------------------------------
  //GAME TEXT
  gTColorT = 0; //GAME TEXT COLOR TRUE
  gTColorF = 255; //GAME TEXT COLOR FALSE
  gTSizeT = 200; //GAME TEXT SIZE TRUE
  gTSizeF = 200; //GAME TEXT SIZE FALSE
  
  //GAME ARRAY SETUP
  words = new String [6];
  colors = new color [6];
  
  //WORDS
  words[0] = "red";
  words[1] = "green";
  words[2] = "blue";
  words[3] = "purple";
  words[4] = "orange";
  words[5] = "cyan";
  
  //COLORS
  colors[0] = red;
  colors[1] = green;
  colors[2] = blue;
  colors[3] = purple;
  colors[4] = orange;
  colors[5] = cyan;
  
  //PAUSE JOKE
  pause = 255; //PAUSE BUTTON COLOR CHANGE
  
  //GAME START TRUE FALSE GENERATION
   fifty = int(random(0,4));
   
  //0-1 = TRUE, 2-3 = FALSE
   if(fifty == 0) {
    rWord = int(random(0,6));
    rWord = rColor;
  }else if(fifty == 1) {
    rWord = int(random(0,6));
    rWord = rColor;
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
  
  //TIMER
  counter = 0; //FRAME COUNTER
  timer = 700; //TIMER BAR

//GAMEOVER--------------------------------------------------------------------------------
  
  //SCORE
  s = 0; //SCORE
  hs = 0; //HIGHSCORE

}

//MODE CONTROL----------------------------------------------------------------------------
void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game(); 
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == DIFFICULTY) {
    difficulty();
  } else if (mode == GAMEOVERJOKE) {
    gameoverjoke();
  } else {
    println("ERROR MODE=" + mode);
  }
}
