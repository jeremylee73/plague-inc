PImage img;
float fadeAmt = 255;
int wD2 = width/2;
int hD2 = height/2;
PShape shape;

void setup() {
  size(400, 400);
  img = loadImage("PlagueIncDNABubble.png");
  ellipse(wD2, hD2, img.width+3, img.height+3);
  //shape = loadShape("PlagueIncDNABubble.png");
  shape = createShape(ELLIPSE,65,65,50,50);
}

void draw() {
  background(127);
  if (fadeAmt > 0)
    fadeAmt -= 1;
  fill(255,255,255,fadeAmt);
  noStroke();
  rect(width/2,height/2, 50, 50);
  ellipse(100,100,100,100);
  shape(shape, 100, 300);
  //if (fadeAmt <= 100) shape.setVisible(false);
  image(img, wD2-img.width/2, hD2-img.height/2);
}