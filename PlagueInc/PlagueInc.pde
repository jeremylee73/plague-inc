import java.awt.*; //<>// //<>// //<>//
import java.awt.event.*;
import javax.swing.*;
import controlP5.*;
import java.io.PrintStream;
import java.io.OutputStream;

ControlP5 cp5;
DropdownList d1, d2, dSell;
ArrayList<City> cities = new ArrayList<City>();
Disease disease;
Cure cure;
int points;
int pointRate;
ArrayList<String> news;
PImage img;
String[] TMStrings;
JComboBox TMList;
JLabel TMText;
int totalDead;
int totalDiseased;
float percentDead;
ArrayList<Plane> planes;
boolean cheatCodeOn;
PImage victoryImg;
PImage defeatImg;

void citySetup() {
  ArrayList<String> adjacent = new ArrayList<String>();
  adjacent.add("Opelucid City");
  City League = new City("Pokemon League", 1000000, adjacent, true, false, 730, 60);
  cities.add(League);

  ArrayList<String> adjacent1 = new ArrayList<String>();
  adjacent1.add("Pokemon League");
  adjacent1.add("Lacunesa Town");
  adjacent1.add("Icirrus City");
  City Opelucid = new City("Opelucid City", 1000000, adjacent1, true, false, 610, 175);
  cities.add(Opelucid);

  ArrayList<String> adjacent2 = new ArrayList<String>();
  adjacent2.add("Opelucid City");
  adjacent2.add("Undella Town");
  City Lacunesa = new City("Lacunesa Town", 1000000, adjacent2, true, false, 865, 175);
  cities.add(Lacunesa);

  ArrayList<String> adjacent3 = new ArrayList<String>();
  adjacent3.add("Opelucid City");
  adjacent3.add("Mistralton City");
  City Icirrus = new City("Icirrus City", 1000000, adjacent3, true, false, 365, 175);
  cities.add(Icirrus);

  ArrayList<String> adjacent4 = new ArrayList<String>();
  adjacent4.add("Lacunesa Town");
  adjacent4.add("Black City");
  City Undella = new City("Undella Town", 1000000, adjacent4, true, false, 1030, 300);
  cities.add(Undella);

  ArrayList<String> adjacent5 = new ArrayList<String>();
  adjacent5.add("Icirrus City");
  adjacent5.add("Driftveil City");
  City Mistralton = new City("Mistralton City", 1000000, adjacent5, true, false, 170, 300);
  cities.add(Mistralton);

  ArrayList<String> adjacent6 = new ArrayList<String>();
  adjacent6.add("Undella Town");
  adjacent6.add("Nimbasa City");
  City Black = new City("Black City", 1000000, adjacent6, true, true, 865, 425);
  cities.add(Black);

  ArrayList<String> adjacent7 = new ArrayList<String>();
  adjacent7.add("Nimbasa City");
  adjacent7.add("Mistralton City");
  City Driftveil = new City("Driftveil City", 1000000, adjacent7, true, true, 365, 425);
  cities.add(Driftveil);

  ArrayList<String> adjacent8 = new ArrayList<String>();
  adjacent8.add("Black City");
  adjacent8.add("Driftveil City");
  adjacent8.add("Castelia City");
  City Nimbasa = new City("Nimbasa City", 1000000, adjacent8, true, false, 610, 425);
  cities.add(Nimbasa);

  ArrayList<String> adjacent9 = new ArrayList<String>();
  adjacent9.add("Nimbasa City");
  adjacent9.add("Nacrene City");
  City Castelia = new City("Castelia City", 1000000, adjacent9, true, true, 610, 600);
  cities.add(Castelia);

  ArrayList<String> adjacent10 = new ArrayList<String>();
  adjacent10.add("Castelia City");
  adjacent10.add("Straiton City");
  City Nacrene = new City("Nacrene City", 500000, adjacent10, false, true, 920, 500);
  cities.add(Nacrene);

  ArrayList<String> adjacent11 = new ArrayList<String>();
  adjacent11.add("Nacrene City");
  adjacent11.add("Accumula Town");
  City Straiton = new City("Straiton City", 200000, adjacent11, false, false, 1040, 480);
  cities.add(Straiton);

  ArrayList<String> adjacent12 = new ArrayList<String>();
  adjacent12.add("Straiton City");
  adjacent12.add("Nuvema Town");
  City Accumula = new City("Accumula Town", 100000, adjacent12, false, false, 1070, 570);
  cities.add(Accumula);

  ArrayList<String> adjacent13 = new ArrayList<String>();
  adjacent13.add("Accumula Town");
  City Nuvema = new City("Nuvema Town", 100000, adjacent13, true, true, 1100, 660);
  cities.add(Nuvema);

  ArrayList<String> adjacent14 = new ArrayList<String>();
  City Unity = new City("Unity Tower", 200000, adjacent14, true, true, 410, 700);
  cities.add(Unity);
}

void drawCities() {
  fill(255, 255, 255);
  for (int i=0; i<cities.size(); i++) {
    ellipse(cities.get(i).x, cities.get(i).y, 65, 65);
  }
}

void spreadDisease(City c) {
  if (c.diseased > 0) {
    double rate = (disease.infectivity) * ((c.population-c.diseased-c.dead) / (c.population * 1.0)) * c.diseased;
    c.diseased += Math.ceil(rate);
    if (c.diseased > c.population - c.dead) {
      c.diseased = c.population - c.dead;
    }
  }
}

void killDisease(City c) {
  if (disease.lethality > 0 && c.diseased > 0) {
    double rate = (disease.lethality) * 10000;
    c.dead += Math.ceil(rate);
    c.diseased -= Math.ceil(rate);
    if (c.diseased < 0) {
      c.diseased = 0;
    }
    if (c.dead > c.population) {
      c.dead = c.population;
    }
  }
}

void customize(DropdownList ddl) {
  // a convenience function to customize a DropdownList
  ddl.setBackgroundColor(color(190)); 
  ddl.setItemHeight(20);
  ddl.setBarHeight(30);
  ddl.setSize(200, 100);
  ddl.setColorBackground(color(60)); 
  ddl.setColorActive(color(255, 128));
}

void Confirm() {
  if (d1.getValue() != 0) {
    fill(205);
    rect(1220, 300, 1000, 1000);
    rect(1220, 500, 170, 80);
    ArrayList<Mutation> accTMuts = disease.accessibleTMutations;
    Mutation mut = accTMuts.get((int) d1.getValue() - 1);
    if (!disease.addTMutation(mut)) {
      fill(0, 0, 0);
      textSize(10);
      text("You do not have enough points for "+mut.name+".", 1220, 500, 150, 75);
    }
    refreshDropDownList("<Transmission>");
    refreshDropDownList("<Current Mutations>");
  }
  if (d2.getValue() != 0) {
    fill(205);
    rect(1220, 400, 1000, 1000);
    rect(1220, 500, 170, 80);
    ArrayList<Mutation> accSMuts = disease.accessibleSMutations;
    Mutation mut = accSMuts.get((int) d2.getValue() - 1);
    if (!disease.addSMutation(mut)) {
      fill(0, 0, 0);
      textSize(10);
      text("You do not have enough points for "+mut.name+".", 1220, 500, 150, 75);
    }
    refreshDropDownList("<Symptoms>");
    refreshDropDownList("<Current Mutations>");
  }
  if (dSell.getValue() != 0) {
    fill(205);
    rect(1220, 500, 170, 80);
    fill(0, 0, 0);
    textSize(10);
    text("You cannot buy an already acquired mutation.", 1220, 500, 150, 75);
  }
}

boolean refreshDropDownList(String name) {
  if (name.equals("<Transmission>")) {
    ArrayList<Mutation> accTMuts = disease.accessibleTMutations;
    d1 = cp5.addDropdownList("<Transmission>").setPosition(1220, 300);
    d1.addItem("<Transmission>", 0);
    customize(d1);
    d1.getCaptionLabel().set("<Transmission>");
    for (int i=1; i<=accTMuts.size(); i++) {
      d1.addItem(accTMuts.get(i-1).name, i);
    }
    return true;
  } else if (name.equals("<Symptoms>")) {
    ArrayList<Mutation> accSMuts = disease.accessibleSMutations;
    d2 = cp5.addDropdownList("<Symptom>").setPosition(1220, 400);
    d2.addItem("<Symptom>", 0);
    customize(d2);
    d2.getCaptionLabel().set("<Symptom>");
    for (int i=1; i<=accSMuts.size(); i++) {
      d2.addItem(accSMuts.get(i-1).name, i);
    }
    return true;
  } else if (name.equals("<Current Mutations>")) {
    ArrayList<Mutation> acqMuts = disease.acquiredMutations;
    dSell.clear();
    dSell.addItem("<Current Mutations>", 0);
    for (int i=1; i<=acqMuts.size(); i++) {
      dSell.addItem(acqMuts.get(i-1).name, i);
    }
  }
  return false;
}

void Sell() {
  if (dSell.getValue() != 0) {
    ArrayList<Mutation> acqMuts = disease.acquiredMutations;
    Mutation mut = acqMuts.get((int) (dSell.getValue()-1));
    fill(205);
    rect(1220, 500, 170, 80);
    if (disease.sell(mut)) {
      fill(205);
      rect(1220, 560, 1000, 1000);
      dSell = cp5.addDropdownList("<Current Transmissions>").setPosition(1220, 560);
      dSell.addItem("<Current Transmissions>", 0);
      customize(dSell);
      dSell.getCaptionLabel().set("<Current Mutations>");
      for (int i=1; i <= acqMuts.size(); i++) {
        dSell.addItem(acqMuts.get(i-1).name, i);
      }
    }
  }
  if (d1.getValue() != 0 || d2.getValue() != 0) {
    fill(205);
    rect(1220, 500, 170, 80);
    fill(0, 0, 0);
    textSize(10);
    text("You cannot sell a mutation that hasn't been bought yet.", 1220, 500, 150, 75);
  }
}

void updateDiseaseLabels() {
  fill(205);
  rect(1220, 0, 200, 22);
  fill(0, 0, 0);
  text("Infectivity: " + (int) (disease.infectivity * 10000) + " / 200", 1220, 20);
  fill(205);
  rect(1220, 30, 200, 22);
  fill(0, 0, 0);
  text("Severity: " + (int) (disease.severity * 10000) + " / 200", 1220, 50);
  fill(205);
  rect(1220, 60, 200, 22);
  fill(0, 0, 0);
  text("Lethality: " + (int) (disease.lethality * 10000) + " / 200", 1220, 80);
  fill(205);
  rect(1220, 90, 100, 22);
  fill(0, 0, 0);
  text("Points: " + points, 1220, 110);
}

void updatePointRate() {
  if (disease.severity > 0.0005) {
    pointRate = 2;
  }
  if (disease.severity > 0.0015) {
    pointRate = 3;
  }
  if (disease.severity > 0.0025) {
    pointRate = 4;
  }
  if (disease.severity > 0.0040) {
    pointRate = 5;
  }
  if (disease.severity > 0.0050) {
    pointRate = 6;
  }
  if (percentDead > 25 || points > 70 && pointRate > 1) {
    pointRate--;
  }
  if (percentDead > 35 || points > 80 && pointRate > 1) {
    pointRate--;
  }
  if (percentDead > 45  || points > 90 && pointRate > 1) {
    pointRate--;
  }
  if (percentDead > 55 || points > 100 && pointRate > 1) {
    pointRate--;
  }
  if (percentDead > 65 || points > 110 && pointRate > 1) {
    pointRate--;
  }
}

void putStatsText(Mutation mut, String action) {
  String symbol = "";
  String costOrRefund = "";
  if (action.equals("buy")) {
    symbol = "+";
    costOrRefund = "Cost";
  } else if (action.equals("sell")) {
    symbol = "-";
    costOrRefund = "Refund";
  }
  fill(0, 0, 0);
  textSize(10);
  text(mut.name(), 1220, 510);
  String stats = "";
  stats+="Infectivity: "+symbol+mut.infIncrement()+"  ";
  stats+="Severity: "+symbol+mut.sevIncrement()+"  ";
  //spacing for visual purposes
  stats+="Lethality: "+symbol+mut.letIncrement()+"  ";
  if (mut.letIncrement() < 10) {
    stats+= " ";
  }
  if (costOrRefund.equals("Cost")) {
    stats+= " ";
  }
  stats+=costOrRefund+": "+mut.cost()+" Points";
  text(stats, 1220, 515, 150, 75);
}

String printMutationArray(ArrayList<Mutation> ary) {
  String str = "[";
  for (int i = 0; i < ary.size(); i++) {
    if (i != 0) {
      str+= ", ";
    }
    str+= ary.get(i).name;
  }
  str+="]";
  return str;
}

String printStringArray(ArrayList<String> ary) {
  String str = "[";
  for (int i = 0; i < ary.size(); i++) {
    str+= ary.get(i);
    if (i != ary.size() - 1) {
      str+= ", ";
    }
  }
  str+= "]";
  return str;
}

void controlEvent(ControlEvent theEvent) {
  //this skeleton code is credited to one of the examples on documentation
  //documentation stated this first if statement is necessary to not throw an error
  if (theEvent.isGroup()) {
    //from what I've seen, this if case is never activated in our code
  } else if (theEvent.isController()) {
    if (theEvent.getController() == d1) {
      fill(205);
      rect(1220, 500, 170, 80);
      if (theEvent.getController().getValue() != 0) {
        Mutation mut = disease.accessibleTMutations.get((int)theEvent.getController().getValue()-1);
        putStatsText(mut, "buy");
      }
    }
    if (theEvent.getController() == d2) {
      fill(205);
      rect(1220, 500, 170, 80);
      if (theEvent.getController().getValue() != 0) {
        Mutation mut = disease.accessibleSMutations.get((int)theEvent.getController().getValue()-1);
        putStatsText(mut, "buy");
      }
    }
    if (theEvent.getController() == dSell) {
      fill(205);
      rect(1220, 500, 170, 80);
      if (theEvent.getController().getValue() != 0) {
        Mutation mut = disease.acquiredMutations.get((int)theEvent.getController().getValue()-1);
        putStatsText(mut, "sell");
      }
    }
  }
}

void mousePressed() {
  for (City c : cities) {
    //pops bubble if bubble is above the city and adds 2 points
    //this if statement calculates if mouse coords is within the bubble's hitbox
    if ((Math.pow((mouseX - c.x), 2) + Math.pow((mouseY - c.y), 2) < 225) && (c.hasBubble || c.hasSporadicBubble)) {
      if (c.hasBubble) {
        fill(255, 255, 255);
        c.bubblePopped = true;
      }
      if (c.hasSporadicBubble) {
        fill(255, (int)c.GB, (int)c.GB);
        c.hasSporadicBubble = false;
      }
      ellipse(c.x, c.y, 35, 35);
      //when bubblePopped, c.hasBubble is set to false b/c of updateColor method within City class
      points+= 2;
    }
  }
  if (pow((mouseX - 605), 2) + pow((mouseY - 325), 2) <= 225) {
    cheatCodeOn = true;
  }
}

void mouseReleased() {
  cheatCodeOn = false;
}



void setup() {
  //this segment of code from StackOverflow prevents the annoying 
  //warning messages from showing up in the processing console
  System.setErr(new PrintStream(new OutputStream() {
    public void write(int b) {
    }
  }
  ));
  System.err.println("WARNING: Controller with name \"/<Symptom>\" already exists. overwriting reference of existing controller."); // will not be printed
  System.err.println("WARNING: Controller with name \"/<Transmission>\" already exists. overwriting reference of existing controller."); // will not be printed

  size(1440, 785);
  img = loadImage("map.png");
  image(img, 0, 0);
  victoryImg = loadImage("victory.png");
  defeatImg = loadImage("defeat.png");

  citySetup();
  drawCities();
  disease = new Disease();
  cure = new Cure();
  points = 0;
  pointRate = 1;
  news = new ArrayList();
  planes = new ArrayList<Plane>();

  textSize(16);
  fill(0, 0, 0);
  text("Infectivity: " + (int) (disease.infectivity * 10000) + " / 100", 1220, 20);
  text("Severity: " + (int) (disease.severity * 10000) + " / 100", 1220, 50);
  text("Lethality: " + (int) (disease.lethality * 10000) + " / 100", 1220, 80);
  text("Points: " + 0, 1220, 110);
  text("Cure: " + 0 + "%", 1220, 140);
  text("Infected: 0%", 1220, 170);
  text("Dead: 0%", 1220, 200);

  percentDead = 0;

  cp5 = new ControlP5(this);
  d1 = cp5.addDropdownList("<Transmission>").setPosition(1220, 300);
  d1.addItem("<Transmission>", 0);
  for (int i=1; i<=disease.accessibleTMutations.size(); i++) {
    d1.addItem(disease.accessibleTMutations.get(i-1).name, i);
  }
  customize(d1);
  d1.getCaptionLabel().set("<Transmission>");

  d2 = cp5.addDropdownList("<Symptom>").setPosition(1220, 400);
  d2.addItem("<Symptom>", 0);
  for (int i=1; i<=disease.accessibleSMutations.size(); i++) {
    d2.addItem(disease.accessibleSMutations.get(i-1).name, i);
  }
  customize(d2);
  d2.getCaptionLabel().set("<Symptom>");

  dSell = cp5.addDropdownList("<Current Transmissions>").setPosition(1220, 560);
  dSell.addItem("<Current Mutations>", 0);
  customize(dSell);
  dSell.getCaptionLabel().set("<Current Mutations>");

  cp5.addButton("Confirm").setValue(0).setPosition(1215, 680).setSize(70, 40);
  cp5.addButton("Sell").setValue(0).setPosition(1300, 680).setSize(70, 40);

  cities.get(0).diseased = 1;
}

void draw() {
  totalDead = 0;
  totalDiseased = 0;

  size(1440, 785);
  image(img, 0, 0);
  for (City c : cities) {
    fill(0, 0, 0);
    c.drawRoutes();
    fill(255, 255, 255);
    c.drawAirports();
    //c.drawDocks();
  }
  drawCities();

  int numCitiesInfected = 0;
  for (City c : cities) {
    if (c.diseased > 0){
      numCitiesInfected++;
    }
    if (Math.random() < (1/(720.0 + numCitiesInfected*100))) {
      c.sporadicBubble();
    }
    c.planeTransmission();
  }

  for (int i=0; i<planes.size(); i++) {
    boolean toSend = true;
    if (planes.get(i).to.x > planes.get(i).from.x) {
      if (planes.get(i).x > planes.get(i).to.x) {
        toSend = false;
      }
    }
    if (planes.get(i).to.y > planes.get(i).from.y) {
      if (planes.get(i).y > planes.get(i).to.y) {
        toSend = false;
      }
    }
    if (planes.get(i).to.x < planes.get(i).from.x) {
      if (planes.get(i).x < planes.get(i).to.x) {
        toSend = false;
      }
    }
    if (planes.get(i).to.y < planes.get(i).from.y) {
      if (planes.get(i).y < planes.get(i).to.y) {
        toSend = false;
      }
    }
    if (toSend) {
      planes.get(i).send();
      if (planes.get(i).isDiseased) {
        planes.get(i).to.diseased += 1;
      }
    }
  }

  for (City c : cities) {
    killDisease(c);
    spreadDisease(c);
    totalDead += c.dead;
    totalDiseased += c.diseased;
    if ((c.dead / (c.population * 1.0)) > 0.25 && c.airportOpen) {
      c.closeAirport();
    }
    c.updateColor();
    c.updateDiseasedCount();
    c.updateDeadCount();
    updatePointRate();
    updateDiseaseLabels();
    if (c.diseased > 1000000) {
      c.diseased = 1000000;
    }
    c.landTransmission();
  }

  if (Math.random() < 0.0005) {
    disease.addRandomMutation();
  }

  disease.updateAccessibleMutations();

  //displays total % infected and total % dead
  fill(205);
  rect(1220, 150, 100, 22);
  fill(0, 0, 0);
  text("Infected: " + (totalDiseased * 100 / (cities.size()*cities.get(0).population)) + "%", 1220, 170);
  fill(205);
  rect(1220, 180, 100, 22);
  fill(0, 0, 0);
  int totalPop = 0;
  for (int i=0; i<cities.size(); i++) {
    totalPop += cities.get(i).population;
  }
  percentDead = totalDead * 100.0 / (totalPop);
  text("Dead: " + (int)percentDead + "%", 1220, 200);
  //calculates and displays cure %
  if (totalDead >= 10000 ) {
    if (cure.developed() <= 100) {
      cure.setDeveloped((int)(percentDead * 1.5));
    }
    if (cure.developed() > 100) {
      cure.setDeveloped(100);
    }
    fill(205);
    rect(1220, 120, 100, 22);
    fill(0, 0, 0);
    text("Cure: " + (int)cure.developed() + "%", 1220, 140);
  }
  if (Math.random() < (1/180.0)) {
    points += pointRate;
  }
  if (cheatCodeOn) {
    points+=1;
  }
  
  if (totalDead == totalPop){
    size(1440,785);
    image(victoryImg, 0, 0);
    d1.remove();
    d2.remove();
    dSell.remove();
    cp5.getController("Confirm").remove();
    cp5.getController("Sell").remove();
    noLoop();
  }
  if (cure.developed() >= 100 || totalDiseased == 0){
    size(1440,785);
    image(defeatImg, 0, 0);
    d1.remove();
    d2.remove();
    dSell.remove();
    cp5.getController("Confirm").remove();
    cp5.getController("Sell").remove();
    noLoop();
  }
}
