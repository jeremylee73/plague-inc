class City{
  String name;
  int population;
  int diseased;
  int dead;
  int pointRate;
  ArrayList<String> adjacent;
  boolean hasAirport;
  boolean hasDock;
  boolean airportOpen;
  boolean dockOpen;
  
  City(String name, int population, ArrayList<String> adjacent, boolean hasAirport, boolean hasDock){
    this.population = population;
    this.adjacent = adjacent;
    this.hasAirport = hasAirport;
    this.hasDock = hasDock;
  }
}
