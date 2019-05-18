class City{
  int population;
  int diseased;
  int dead;
  int pointRate;
  ArrayList<City> adjacent;
  boolean hasAirport;
  boolean hasDock;
  boolean airportOpen;
  boolean dockOpen;
  
  City(int population, ArrayList<City> adjacent, boolean hasAirport, boolean hasDock){
    this.population = population;
    this.adjacent = adjacent;
    this.hasAirport = hasAirport;
    this.hasDock = hasDock;
  }
}
