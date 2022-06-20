void game() {
  theme.play();
  background(blue);
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //ball
  circle(ballx, bally, balld);

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  text(rightscore, 3*width/4, 100);
  fill(blue);
  text(timer, 3*width/4, 550);

  //scoreboard
  textSize(50);
  fill(lightpink);
  text(leftscore, width/4, 100);
  fill(darkgreen);
  text(rightscore, 3*width/4, 100);
  timer=timer-1;

  //draw paddles
  fill(lightpink);
  circle(leftx, lefty, leftd);
  fill(darkgreen);
  circle(rightx, righty, rightd);

  //draw ball
  fill(orange);
  circle(ballx, bally, balld);

  //move paddles
  if (righty<100) {
    righty=100;
  }
  if (lefty<100) {
    lefty=100;
  }
  if (righty>500) {
    righty=500;
  }
  if (lefty>500) {
    lefty=500;
  }

  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;

  if (AI==false) {


    if (upkey==true)righty=righty-5;
    if (downkey==true)righty=righty+5;
  } else {
    if (wkey==true) lefty=lefty-5;
    if (skey==true) lefty=lefty+5;

    if (ballx>width/2) {
      if (bally>righty) {
        righty=righty+vp;
      }
      if (bally<righty) {
        righty=righty-vp;
      }
    }
  }

  //move ball
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }
  //scoring
  if (ballx<0) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }

  if (ballx>800) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }

  //bouncing
  
  if (bally<=balld/2) {
    bally=balld/2;
    vy=vy*-1;
    bump.rewind();
    bump.play();
  }

  if (bally>=height-balld/2) {
    bally=height-balld/2;
    vy=vy*-1;
    bump.rewind();
    bump.play();
  }




  if (dist(ballx, bally, rightx, righty)<balld/2+rightd/2) {
    vx=(ballx-rightx)/15;
    vy=(bally-righty)/15;
    collision.rewind();
    collision.play();
  }

  if (dist(ballx, bally, leftx, lefty)<balld/2+leftd/2) {
    vx=(ballx-leftx)/15;
    vy=(bally-lefty)/15;
    collision.rewind();
    collision.play();
  }

  if (leftscore>=3||rightscore>=3) {
    mode=GAMEOVER;
  }
}


void gameClicks() {

  mode=PAUSE;
}
