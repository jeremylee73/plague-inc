PImage img;
PImage bimg;
float fadeAmt = 255;
int wD2 = width/2;
int hD2 = height/2;
PShape shape;

void setup() {
  //size(400, 400);
  img = loadImage("PlagueIncDNABubble.png");
  ellipse(wD2, hD2, img.width+3, img.height+3);
  //shape = loadShape("PlagueIncDNABubble.png");
  shape = createShape(ELLIPSE,65,65,50,50);
  size(1440,785);
  bimg = loadImage("map.png");
}

void draw() {
  image(bimg, 0, 0);
  stroke(10);
  fill(255,255,255);
  ellipse(500,500,65,65);
  noStroke();
  //background(127);
  if (fadeAmt > 0)
    fadeAmt -= 1;
  fill(255,fadeAmt,fadeAmt, 150);
  noStroke();
  rect(width/2,height/2, 50, 50);
  ellipse(500,500,65,65);
  shape(shape, 100, 300);
  //if (fadeAmt <= 100) shape.setVisible(false);
  image(img, wD2-img.width/2, hD2-img.height/2);
}
