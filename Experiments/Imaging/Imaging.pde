PImage img;
float fadeAmt = 255;
int wD2 = width/2;
int hD2 = height/2;

void setup() {
  size(400, 400);
  img = loadImage("PlagueIncDNABubble.png");
  ellipse(wD2, hD2, img.width+3, img.height+3);
}

void draw() {
  background(127);
  if (fadeAmt > 0)
    fadeAmt -= 1;
  fill(255,255,255,fadeAmt);
  rect(width/2,height/2, 50, 50);
  image(img, wD2-img.width/2, hD2-img.height/2);
}
