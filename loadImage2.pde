/* @pjs preload="sans.png"; */
/* @pjs preload="wheelchairCat.png"; */
/* @pjs preload="noteblock.png"; */
/* @pjs preload="gaster.png"; */

PImage sans;
PImage cat;
PImage noteblock;
PImage gasterImg;
float gaster = 0;

void setup() {
  size(600, 600);
  textAlign(CENTER);
  sans = loadImage("sans.png");
  cat = loadImage("wheelchairCat.jpg");
  noteblock = loadImage("noteblock.png");
  gasterImg = loadImage("gaster.png");
}

void draw() {
  //cat
  noTint();
  image(cat, -220, -100);

  //noteblock
  noTint();
  image(noteblock, -50, 50);

  //sans undertale
  noTint();
  image(sans, mouseX, mouseY, 200, 240); 

  //sans gaster blaster
  tint(255, gaster);
  image(gasterImg, mouseX - 100, 50, 160, 200);
  
  //sans text
  textSize(25);
  fill(255, 255, 255, gaster);
  text("i am sans undertale lol", mouseX - 140, mouseY + 130);

}

//gaster
void mousePressed() {
  if (gaster == 0) {
    gaster = 255;
  } else 
  {
    gaster = 0;
  }
}
