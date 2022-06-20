void reset() {
  //target
  ballx=width/2;
  bally=height/2;
leftx=0;
  lefty=height/2;
  leftd=200;

  rightx=width;
  righty=height/2;
  rightd=200;
  vx=random(-2, 2);
  vy=random(-2, 2);
  
  //
  rightscore=leftscore=0;
}
