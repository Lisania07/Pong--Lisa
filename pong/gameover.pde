void gameover() {
  theme.pause();
  gameover.play();
  float g=0;
 float red, green, blue;
 red=random(0,155);
 green=random(0,255);
 blue=random(0,255);
int i=width;
  while (i>0) {
    g=map(i,width,0,255,0);
    noStroke();
  background(red,green,blue);
    ellipse(width/2,height/2,i,i);
    i=i-5;
  }
  fill(orange);
  if (leftscore>rightscore) {
    textAlign(CENTER, CENTER);
    textFont(HUHU,50);
    textSize(75);
    text("LEFT WINS!", 400, 300);
  } else {
    textAlign(CENTER, CENTER);
    textSize(75);
    text("RIGHT WINS!", 400, 300);
  }

}

void gameoverClicks() {

  mode=INTRO;
}
