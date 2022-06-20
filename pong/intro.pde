void intro() {

  // background
  background(blue);
  float g=0;
  float red, green, blue;
  red=random(0, 155);
  green=random(0, 255);
  blue=random(0, 255);
  int i=width;
  while (i>0) {
    g=map(i, width, 0, 255, 0);
    noStroke();
    background(red, green, blue);
    ellipse(width/2, height/2, i, i);
    i=i-5;
  }


  theme.play();
  
  

 fill(brown);
  if (mouseX>100&&mouseX<300&&mouseY>400&&mouseY<480) {
    fill(orange);
   
  } else {
    fill(brown);
  }
  rect(100, 400, 200, 80);
  

  
  if (mouseX>500&&mouseX<700&&mouseY>400&&mouseY<480) {
    fill(orange);
  } else {
    fill(brown);
  }
rect(500, 400, 200, 80);
  textAlign(CENTER, CENTER);
  textFont(HAHA, 50);
  fill(brown);
  textSize(75);
  text("PONG", 400, 200);

  //BUTTON

  textFont(HUHU, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(35);
  text("1 Player", 200, 435);
  text("2 Players", 600, 435);




  reset();
}

void introClicks() {
  if (mouseX>100&&mouseX<300&&mouseY>400&&mouseY<480) {

    mode=GAME;
    AI=true;
  }

  if (mouseX>500&&mouseX<700&&mouseY>400&&mouseY<480) {
    mode=GAME;
    AI=false;
  }
}
