//Pong
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//colorcolor brightpink=#FE4365;
color lightpink=#FC9D9A;
color orange=#F9CDAD;
color lightgreen=#C8C8A9;
color darkgreen=#83AF9B;
color blue=#617FA5;
color brown=#3A1200;


  
//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;


//entity variables
float leftx, lefty, rightx, righty, leftd, rightd;//paddles
float ballx, bally, balld;///ball
float vy, vx,vp;
boolean AI;

//scoring
int leftscore, rightscore, timer;

//keyboard variable
boolean upkey, downkey, wkey, skey;

//clickrect
int x, y;

PFont HAHA;
PFont HUHU;

//sound
Minim minim;
AudioPlayer theme,collision,gameover,bump;


void setup() {
  size(800, 600);
  mode=INTRO;

  //initialize paddles
  leftx=0;
  lefty=height/2;
  leftd=200;

  rightx=width;
  righty=height/2;
  rightd=200;

  //intialize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  vx=random(-2, 2);
  vy=random(-2, 2);
  vp=2;


  //intialize score
  rightscore=leftscore=0;
  timer=100;

  //intialize key viarables
  wkey=skey=upkey=downkey=false;

  AI=false;
  HAHA=createFont("Pixelmania",50);
  HUHU=createFont("Water Galon",50);
  
  minim=new Minim(this);
  theme=minim.loadFile("theme.wav");
  collision=minim.loadFile("coin.wav");
  bump=minim.loadFile("bump.wav");
  gameover=minim.loadFile("gameover.wav");
  
  
  
  
}

void draw() {

  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Mode error:"+mode);
  }
}
