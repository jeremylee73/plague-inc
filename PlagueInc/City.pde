class City {
  String name;
  int population;
  int diseased;
  int dead;
  int pointRate;
  int x;
  int y;
  ArrayList<String> adjacent;
  boolean hasAirport;
  boolean hasDock;
  boolean airportOpen;
  boolean dockOpen;
  boolean hasBubble;
  int green, blue, red;
  boolean bubblePopped;

  City(String name, int population, ArrayList<String> adjacent, boolean hasAirport, boolean hasDock, int x, int y) {
    this.name = name;
    this.population = population;
    this.adjacent = adjacent;
    this.hasAirport = hasAirport;
    this.hasDock = hasDock;
    diseased = 0;
    dead = 0;
    this.x = x;
    this.y = y;
    green = 0; 
    blue = 0;
    red = 255;
    drawRoutes();
    drawAirports();
    drawDocks();
  }

  void drawRoutes() {
    for (int i=0; i<cities.size(); i++) {
      for (int j=0; j<adjacent.size(); j++) {
        if (cities.get(i).name.equals(adjacent.get(j))) {
          line(cities.get(i).x, cities.get(i).y, x, y);
        }
      }
    }
    strokeWeight(4);
  }
  
  void drawAirports(){
    for (int i=0; i<cities.size(); i++){
      if (cities.get(i).hasAirport){
        rect(cities.get(i).x + 40, cities.get(i).y - 25, 20, 20);
      }
    }
  }
  
  void drawDocks(){
    for (int i=0; i<cities.size(); i++){
      if (cities.get(i).hasDock){
        triangle(cities.get(i).x+40, cities.get(i).y+20, cities.get(i).x+50, cities.get(i).y+5, cities.get(i).x + 60, cities.get(i).y + 20);
      }
    }
  }

  void updateColor() {
    double GB = (population - diseased) / (population * 1.0) * 255;
    fill(255, (int) GB, (int) GB, 1);
    ellipse(x, y, 65, 65);
    if (GB > 254 && diseased > 0 && !bubblePopped) {
      //this case is true longer than it should be? might be causing bug with bubbles visuals
      hasBubble = true;
      fill(255, green, blue);
      ellipse(x, y, 30, 30);
      green++; 
      blue++;
    } else {
      hasBubble = false;
    }
    if (bubblePopped && GB > 254){
      fill(255,255,255);
      ellipse(x,y,30,30);
    }
  }

  void updateDeadCount(){
    fill(0, 0, 0);
    noStroke();
    int digits = 0;
    int temp = dead;
    while (temp > 9) {
      digits++;
      temp = temp / 10;
    }
    rect(x-32, y+52, 100 + (10*digits), 20);
    textSize(16);
    fill(255, 255, 255);
    text(dead + " / " + population, x - 32, y + 70);
  }

  void updateDiseasedCount() {
    fill(255, 255, 255);
    noStroke();
    int digits = 0;
    int temp = diseased;
    while (temp > 9) {
      digits++;
      temp = temp / 10;
    }
    rect(x-32, y+32, 100 + (10*digits), 20);
    textSize(16);
    fill(0, 0, 0);
    text(diseased + " / " + population, x - 32, y + 50);
  }

  void landTransmission() {
    for (int i=0; i<cities.size(); i++) {
      for (int j=0; j<adjacent.size(); j++) {
        if (cities.get(i).name.equals(adjacent.get(j))) {
          if (Math.random() < (diseased / (population * 2.0)) && cities.get(i).diseased == 0) {
            cities.get(i).diseased = 1;
            hasBubble = true;
            //adds infection message to news and shows it on screen
            news.add(cities.get(i).name+" has become infected.");
            fill(205);
            rect(1220,180,160,100);
            fill(0,0,0);
            text(news.get(news.size() - 1),1220,200,150,100);
          }
        }
      }
    }
  }
  
  void sendPlane(PImage img, City c){
    float dx = Math.abs(c.x - x);
    float dy = Math.abs(c.y - y);
    float theta = atan(dy / dx);
    float angle = 0;
    if (c.x > x && c.y > y){
      angle = PI - theta;
    } else if (c.x > x && c.y < y){
      angle = (PI/2) - theta;  
    } else if (c.x < x && c.y > y){
      angle = PI + theta;  
    } else if (c.x < x && c.y < y){
      angle = (3*PI / 2) + theta;  
    }
    pushMatrix();
    rotate(angle);
    translate(dx / 100, dy / 100);
    image(img, x, y);
    popMatrix();
  }
  
  void planeTransmission(){
    if (hasAirport && airportOpen){
      if (Math.random() > (diseased / (population * 1.0))){
        PImage planeImg = loadImage("healthyplane.png");
        image(planeImg, x, y);
        for (int i=0; i<cities.size(); i++){
          if (cities.get(i).hasAirport && cities.get(i).airportOpen){
              sendPlane(planeImg, cities.get(i));
          }
        }
      } else {
        PImage planeImg = loadImage("infectedplane.png");
        image(planeImg, x, y);
        for (int i=0; i<cities.size(); i++){
          if (cities.get(i).hasAirport && cities.get(i).airportOpen){
              sendPlane(planeImg, cities.get(i));
          }
        }
      }
    }
  }
}
