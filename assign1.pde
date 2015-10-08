/* please implement your assign1 code in this file. */

int x,y,w,speedX,enemyY;
PImage fighterImg;
PImage tresureImg;
PImage hpImg;
PImage enemyImg;

void setup () {
  size(640,480) ;  // must use this size.
  x = floor(random(550));
  y = floor(random(20,240));
  w = floor(random(20,200));
  enemyY = floor(random(20,240));
  
  enemyImg = loadImage("img/enemy.png");
  fighterImg = loadImage("img/fighter.png");
  tresureImg = loadImage("img/treasure.png");
  hpImg = loadImage("img/hp.png");
  // your code
}

void draw() {
  background(0);
  //hp
  fill(255,0,0);
  rect(10,0,w,20);
  //enemy
  speedX = speedX+5;
  speedX %=640;
  image(enemyImg,speedX,enemyY);
  
  image(fighterImg,580,240);
  image(hpImg,0,0);
  image(tresureImg,x,y);
  // your code
}
