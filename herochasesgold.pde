float bloogX = 100, bloogY = 100;
float goldX = 200, goldY = 600;
float sunX = 80, sunY = 100;

void setup() {
  //SIZE, BACKGROUND, MODES, ETC...
  size(800, 800);
  background(0, 0, 255);
  ellipseMode(CENTER);
  noStroke();
  frameRate(30);
  
  //CALLING EACH VOID
  scene();
  sunmove();
  gold();
  bloog();
}

void scene() {
  //GRASS
  fill(0, 255, 0);
  rect(0, 600, 800, 300);

  //HOUSE
  fill(255, 0, 0);
  rect(35, 400, 200, 200);
  triangle(20, 400, 250, 400, 125, 300);

  //WINDOWS & DOORS
  fill(0);
  rect(110, 550, 40, 50);
  rect(50, 450, 50, 50);
  rect(170, 450, 50, 50);
  
  //TREES
  fill(0);
  rect(400, 500, 30, 100);
  fill(0);
  ellipse(415, 500, 100, 100);
  fill(0);
  rect(450, 500, 30, 100);
  fill(0);
  ellipse(465, 500, 125, 125);
  
  fill(255, 255, 0);
  ellipse(sunX, sunY, 120, 120);
}

void bloog() {
  rectMode(CENTER);
  //BODY
  fill(128, 75, 23);
  rect(bloogX, bloogY, 30, 100);
  fill(181, 118, 54);
  rect(bloogX, bloogY, 30, 50);

  //HEAD
  fill(247, 220, 193);
  ellipse(bloogX, bloogY-30, 60, 60);

  //EYES
  fill(0);
  ellipse(bloogX-19, bloogY-30, 16, 16);
  ellipse(bloogX+19, bloogY-30, 16, 16);

  //LEGS
  stroke(150);
  line(bloogX-10, bloogY+50, bloogX-10, bloogY+100);
  line(bloogX+10, bloogY+50, bloogX+10, bloogY+100);
 
}

void gold(){
  fill(255,255,0);
  ellipse(goldX, goldY, 20,30);
}

