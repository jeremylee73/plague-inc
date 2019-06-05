PImage img;
PImage bimg;
float fadeAmt = 255;
int wD2 = width/2;
int hD2 = height/2;
PShape shape;

void setup() {
  size(400, 400);
  //img = loadImage("PlagueIncDNABubble.png");
  //ellipse(wD2, hD2, img.width+3, img.height+3);
  //shape = loadShape("PlagueIncDNABubble.png");
  //shape = createShape(ELLIPSE,65,65,50,50);
  //size(1440,785);
  //bimg = loadImage("map.png");
}

void draw() {
  background(127);
  //image(bimg, 0, 0);
  stroke(10);
  fill(255,255,255);
  ellipse(500,500,65,65);
  noStroke();
  if (fadeAmt > 0)
    fadeAmt -= 1;
  fill(fadeAmt, fadeAmt, fadeAmt, 150);
  //fill(255,fadeAmt,fadeAmt, 150);
  //fill(255,0,0,150);
  //noStroke();
  //rect(width/2,height/2, 50, 50);
  ellipse(200,200,65,65);
  //fill(255,fadeAmt+57,fadeAmt+57,150);
  //fill(193,57,57,150);
  //fill(fadeAmt+10);
  ellipse(200,200,30,30);
  //shape(shape, 100, 300);
  //if (fadeAmt <= 100) shape.setVisible(false);
  //image(img, wD2-img.width/2, hD2-img.height/2);
}
