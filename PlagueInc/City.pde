class City{
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
  
  City(String name, int population, ArrayList<String> adjacent, boolean hasAirport, boolean hasDock, int x, int y){
    this.name = name;
    this.population = population;
    this.adjacent = adjacent;
    this.hasAirport = hasAirport;
    this.hasDock = hasDock;
    this.x = x;
    this.y = y;

    for (int i=0; i<cities.size(); i++){
      for (int j=0; j<adjacent.size(); j++){
        if (cities.get(i).name.equals(adjacent.get(j))){
          line(cities.get(i).x, cities.get(i).y, x, y);
        }
      }
    }
    strokeWeight(4);
  }
}
