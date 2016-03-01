int score=0;

float sunX= 0, sunY= 100; //SUN
float xBloog= width/2, yBloog=500; //CHARACTER
float xGold= width/4, yGold= 600, goldW= 20, goldH= 30; //GOLD

int counter= 100;

//SETTING STATIC SCENE
void setup() {
  size (800, 800);
  frameRate(60);
}

//CALLING THE SCENE
void draw() {
  background(103, 227, 248); //SKY
  scene();
  drawBloog();
  drawGold();
  messages();
}

//SETTING THE SCENE
void scene() {

  //GRASS
  noStroke();
  rectMode(CORNER);
  fill(181, 185, 72);
  rect(0, 500, 800, 300);

  //HOUSE
  fill(214, 59, 26);
  rect(100, 400, 200, 100 );
  fill(102, 39, 0);  
  triangle( 100, 400, 300, 400, 200, 300 );

  //ROOF
  fill(0);
  rect(175, 450, 50, 50);
  rect(120, 410, 40, 40);
  rect(240, 410, 40, 40);

  //TREE #1
  fill(94, 64, 38);
  rect(600, 410, 30, 100);
  fill(110, 121, 0);
  ellipse(615, 380, 150, 150);

  //TREE #2
  fill(86, 56, 18);
  rect(425, 450, 30, 75);
  fill(97, 116, 0);
  ellipse(440, 425, 100, 100);

  //TREE #3
  fill(127, 99, 52);
  rect(500, 475, 30, 100);
  fill(149, 168, 16);
  ellipse(515, 450, 120, 120);

  //SUN
  fill(255, 255, 0);
  ellipse(sunX, sunY, 120, 120);

  //MOVING THE SUN ACROSS THE SKY
  if (sunX > width) {
    sunX = 0;
    sunY = random(40, 200);
  }
  sunX = sunX+1;

  //CLOUDS
  fill(255);
  ellipse(100, 100, 200, 60);
  ellipse(100, 90, 100, 60);
}

//BUILDING BLOOG
void drawBloog() {
  noStroke();
  rectMode(CENTER);

  //BODY
  fill(128, 75, 23);
  rect(xBloog, yBloog, 30, 100);
  fill(181, 118, 54);
  rect(xBloog, yBloog, 30, 50);
  fill(0);
  text("JAY", xBloog-13, yBloog+10);
  text("VAH", xBloog-13, yBloog+20);

  //HEAD
  fill(247, 220, 193);
  ellipse(xBloog, yBloog-30, 60, 60);

  //EYES
  fill(0);
  ellipse(xBloog-19, yBloog-30, 16, 16);
  ellipse(xBloog+19, yBloog-30, 16, 16);

  //LEGS
  stroke(150);
  line(xBloog-10, yBloog+50, xBloog-10, yBloog+100);
  line(xBloog+10, yBloog+50, xBloog+10, yBloog+100);
}

void drawGold() {
  noStroke();
  fill(255, 255, 0);
  ellipse(xGold, yGold, goldW, goldH);

  xBloog=  xBloog  +  (xGold-xBloog) / 50;    //BLOOG MOVES TOWARD THE GOLD
  yBloog=  yBloog  +  (yGold-yBloog) / 50;

  if (xBloog > width) {
    xBloog = 0;
    yBloog = random(0, 800);
  }
  
  if (xBloog == xGold){
    counter = counter + 100;
  }

  if (dist(xBloog, yBloog, xGold, yGold) < 50) { 
    xGold = random(400, 800);
    yGold = random(600, 800);
  }
}

void messages(){
  fill(0);
  text( "Hero Chases Gold", 10, 20);
  text( "By Maria Campagna", 10, 40);
  text( "CST 112 - Introduction to Programming", 10, 60);
  text(counter, width-50, 20);
}
