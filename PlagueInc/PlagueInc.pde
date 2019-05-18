void setup(){
  size(1200,785);
  PImage img;
  img = loadImage("map.png");
  img.resize(width, height);
  background(img);
  ArrayList<City> adjacent = new ArrayList<City>();
  City NuvemaTown = new City(10, adjacent, true, true);
}

void draw(){
  line(610, 425, 865, 425);
  line(610, 425, 365, 425);
  strokeWeight(4);
  // Nimbasa City
  circle(610, 425, 65);
  // Black City
  circle(865, 425, 65);
  // Driftveil City
  circle(365, 425, 65);
  // Undella Town
  circle(1030, 300, 65);
  // Mistralton City
  circle(170, 300, 65);
  // Iccirus City
  circle(365, 175, 65);
  // Lacunesa Town
  circle(865, 175, 65);
  // Opelucid City
  circle(610, 175, 65);
  // Castelia City
  circle(610, 600, 65);

}
