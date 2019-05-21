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
  int green, blue;
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
    drawRoutes();
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

  void updateColor() {
    double GB = (population - diseased) / (population * 1.0) * 255;
    fill(255, (int) GB, (int) GB, 1);
    ellipse(x, y, 65, 65);
    if (diseased > 0 && green < 256 && blue < 256 && !bubblePopped) {
      hasBubble = true;
      fill(255, green, blue);
      ellipse(x, y, 30, 30);
      green++; 
      blue++;
    } else {
      fill(255, (int) GB, (int) GB, 1);
      hasBubble = false;
    }
    if (bubblePopped){
      fill(255,255,255);
      ellipse(x,y,30,30);
    }
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
          if (Math.random() < (diseased / (population * 1.0)) && cities.get(i).diseased == 0) {
            cities.get(i).diseased = 1;
            hasBubble = true;
          }
        }
      }
    }
  }
}