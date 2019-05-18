void setup(){
  size(1200,785);
  PImage img;
  img = loadImage("map.png");
  img.resize(width, height);
  background(img);
  
  ArrayList<String> adjacent = new ArrayList<String>();
  adjacent.add("Opelucid City");
  City League = new City("Pokemon League", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Lacunesa Town");
  adjacent.add("Icirrus City");
  City Opelucid = new City("Opelucid City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Opelucid City");
  adjacent.add("Undella Town");
  City Lacunesa = new City("Lacunesa Town", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Opelucid City");
  adjacent.add("Mistralton City");
  City Icirrus = new City("Icirrus City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Lacunesa Town");
  adjacent.add("Black City");
  City Undella = new City("Undella Town", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Icirrus City");
  adjacent.add("Driftveil City");
  City Mistralton = new City("Mistralton City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Undella Town");
  adjacent.add("Nimbasa City");
  City Black = new City("Black City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Nimbasa City");
  adjacent.add("Mistralton City");
  City Driftveil = new City("Driftveil City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Black City");
  adjacent.add("Driftveil City");
  adjacent.add("Castelia City");
  City Nimbasa = new City("Nimbasa City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Nimbasa City");
  adjacent.add("Nacrene City");
  City Castelia = new City("Castelia City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Castelia City");
  adjacent.add("Straiton City");
  City Nacrene = new City("Nacrene City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Nacrene City");
  adjacent.add("Accumula Town");
  City Straiton = new City("Straiton City", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Straiton City");
  adjacent.add("Nuvema Town");
  City Accumula = new City("Accumula Town", 1000, adjacent, true, true);
  adjacent.clear();
  
  adjacent.add("Accumula Town");
  City Nuvema = new City("Nuvema Town", 1000, adjacent, true, true);
  adjacent.clear();
  
  City Unity = new City("Unity Tower", 1000, adjacent, true, true);
}

void draw(){
  line(610, 425, 865, 425);
  line(610, 425, 365, 425);
  line(865, 425, 1030, 300);
  line(365, 425, 170, 300);
  line(170, 300, 365, 175);
  line(610, 600, 610, 425);
  line(365,175,610,175);
  line(610,175,865,175);
  line(865,175,1030,300);
  line(730,60,610,175);
  line(610,600,920,500);
  line(920,500,1040,480);
  line(1040,480,1070,570);
  line(1070,570,1100,660);
  strokeWeight(4);
  // Pokemon League
  circle(730, 60, 65);
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
  // Nacrene City
  circle(920, 500, 65);
  // Striaton City
  circle(1040, 480, 65);
  // Accumula Town
  circle(1070, 570, 65);
  // Nuvema Town
  circle(1100, 660, 65);
  // Unity Tower
  circle(410, 700, 65);
}
