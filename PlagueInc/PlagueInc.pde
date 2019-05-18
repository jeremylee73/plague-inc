ArrayList<City> cities = new ArrayList<City>();
Disease disease;
Cure cure;
int points;
ArrayList<String> news;

void citySetup(){
  ArrayList<String> adjacent = new ArrayList<String>();
  adjacent.add("Opelucid City");
  City League = new City("Pokemon League", 1000, adjacent, true, false, 730, 60);
  adjacent.clear();
  cities.add(League);
  
  adjacent.add("Pokemon League");
  adjacent.add("Lacunesa Town");
  adjacent.add("Icirrus City");
  City Opelucid = new City("Opelucid City", 1000, adjacent, true, false, 610, 175);
  adjacent.clear();
  cities.add(Opelucid);
  
  adjacent.add("Opelucid City");
  adjacent.add("Undella Town");
  City Lacunesa = new City("Lacunesa Town", 1000, adjacent, true, false, 865,175);
  adjacent.clear();
  cities.add(Lacunesa);
  
  adjacent.add("Opelucid City");
  adjacent.add("Mistralton City");
  City Icirrus = new City("Icirrus City", 1000, adjacent, true, false,365,175);
  adjacent.clear();
  cities.add(Icirrus);
  
  adjacent.add("Lacunesa Town");
  adjacent.add("Black City");
  City Undella = new City("Undella Town", 1000, adjacent, true, false,1030,300);
  adjacent.clear();
  cities.add(Undella);
  
  adjacent.add("Icirrus City");
  adjacent.add("Driftveil City");
  City Mistralton = new City("Mistralton City", 1000, adjacent, true, false, 170,300);
  adjacent.clear();
  cities.add(Mistralton);
  
  adjacent.add("Undella Town");
  adjacent.add("Nimbasa City");
  City Black = new City("Black City", 1000, adjacent, true, true, 865,425);
  adjacent.clear();
  cities.add(Black);
  
  adjacent.add("Nimbasa City");
  adjacent.add("Mistralton City");
  City Driftveil = new City("Driftveil City", 1000, adjacent, true, true, 365,425);
  adjacent.clear();
  cities.add(Driftveil);
  
  adjacent.add("Black City");
  adjacent.add("Driftveil City");
  adjacent.add("Castelia City");
  City Nimbasa = new City("Nimbasa City", 1000, adjacent, true, false, 610, 425);
  adjacent.clear();
  cities.add(Nimbasa);
  
  adjacent.add("Nimbasa City");
  adjacent.add("Nacrene City");
  City Castelia = new City("Castelia City", 1000, adjacent, true, true, 610, 600);
  adjacent.clear();
  cities.add(Castelia);
  
  adjacent.add("Castelia City");
  adjacent.add("Straiton City");
  City Nacrene = new City("Nacrene City", 1000, adjacent, false, true, 920, 500);
  adjacent.clear();
  cities.add(Nacrene);
  
  adjacent.add("Nacrene City");
  adjacent.add("Accumula Town");
  City Straiton = new City("Straiton City", 1000, adjacent, false, false, 1040, 480);
  adjacent.clear();
  cities.add(Straiton);
  
  adjacent.add("Straiton City");
  adjacent.add("Nuvema Town");
  City Accumula = new City("Accumula Town", 1000, adjacent, false, false, 1070, 570);
  adjacent.clear();
  cities.add(Accumula);
  
  adjacent.add("Accumula Town");
  City Nuvema = new City("Nuvema Town", 1000, adjacent, false, true, 1100, 660);
  adjacent.clear();
  cities.add(Nuvema);
  
  City Unity = new City("Unity Tower", 1000, adjacent, true, true, 410, 700);
  cities.add(Unity);
}

void drawCities(){
  for (int i=0; i<cities.size(); i++){
    circle(cities.get(i).x,cities.get(i).y,65);
  }
}

void spreadDisease(double infectivity, int population, int diseased){
  double rate = infectivity * ((population-diseased) / (population * 1.0)) * diseased;
  diseased += rate;
}

void setup(){
  size(1200,785);
  PImage img;
  img = loadImage("map.png");
  img.resize(width, height);
  background(img);
  
  citySetup();
  drawCities();
}

void draw(){
  cities.get(0).diseased = 1;
  for (int i=0; i<cities.size(); i++){
    spreadDisease(disease.infectivity, cities.get(i).population, cities.get(i).diseased);
  }
  System.out.println(cities.get(0).diseased);
}
