class Disease{
  ArrayList<Mutation> tMutations;
  ArrayList<Mutation> sMutations;
  ArrayList<Mutation> aMutations;
  ArrayList<Mutation> accessibleTMutations;
  ArrayList<Mutation> accessibleSMutations;
  ArrayList<Mutation> accessibleAMutations;
  double infectivity;
  double severity;
  double lethality;
  
  void inputTMutations(){
    ArrayList<String> prereqs = new ArrayList<String>();
    Mutation Bird1 = new Mutation("Bird 1", 12, 3, 0, 0, prereqs);
    tMutations.add(Bird1);
    
    ArrayList<String> prereqs1 = new ArrayList<String>();
    prereqs1.add("Bird 1");
    Mutation Bird2 = new Mutation("Bird 2", 18, 6, 0, 0, prereqs1);
    tMutations.add(Bird2);
    
    Mutation Rodent1 = new Mutation("Rodent 1", 10, 3, 0, 0, prereqs);
    tMutations.add(Rodent1);
    
    ArrayList<String> prereqs2 = new ArrayList<String>();
    prereqs2.add("Rodent 1");
    Mutation Rodent2 = new Mutation("Rodent 2", 16, 6, 0, 0, prereqs2);
    tMutations.add(Rodent2);
    
    Mutation Livestock1 = new Mutation("Livestock 1", 7, 2, 0, 0, prereqs);
    tMutations.add(Livestock1);
    
    ArrayList<String> prereqs3 = new ArrayList<String>();
    prereqs3.add("Livestock 1");
    Mutation Livestock2 = new Mutation("Livestock 2", 12, 4, 0, 0, prereqs3);
    tMutations.add(Livestock2);
    
    Mutation Insect1 = new Mutation("Insect 1", 9, 4, 0, 0, prereqs);
    tMutations.add(Insect1);
    
    ArrayList<String> prereqs4 = new ArrayList<String>();
    prereqs4.add("Insect 1");
    Mutation Insect2 = new Mutation("Insect 2", 20, 8, 0, 0, prereqs4);
    tMutations.add(Insect2);
    
    Mutation Blood1 = new Mutation("Blood 1", 8, 2, 0, 0, prereqs);
    tMutations.add(Blood1);
    
    ArrayList<String> prereqs5 = new ArrayList<String>();
    prereqs5.add("Blood 1");
    Mutation Blood2 = new Mutation("Blood 2", 13, 4, 0, 0, prereqs5);
    tMutations.add(Blood2);
    
    Mutation Air1 = new Mutation("Air 1", 9, 4, 0, 0, prereqs);
    tMutations.add(Air1);
    
    ArrayList<String> prereqs6 = new ArrayList<String>();
    prereqs6.add("Air 1");
    Mutation Air2 = new Mutation("Air 2", 14, 7, 0, 0, prereqs6);
    tMutations.add(Air2);
    
    Mutation Water1 = new Mutation("Water 1", 9, 4, 0, 0, prereqs);
    tMutations.add(Water1);
    
    ArrayList<String> prereqs7 = new ArrayList<String>();
    prereqs7.add("Water 1");
    Mutation Water2 = new Mutation("Water 2", 15, 8, 0, 0, prereqs7);
    tMutations.add(Water2);
    
    ArrayList<String> prereqs8 = new ArrayList<String>();
    prereqs8.add("Bird 2");
    prereqs8.add("Rodent 2");
    prereqs8.add("Livestock 2");
    Mutation ExtremeZoonosis = new Mutation("Extreme Zoonosis", 22, 5, 0, 0, prereqs8);
    tMutations.add(ExtremeZoonosis);
    
    ArrayList<String> prereqs9 = new ArrayList<String>();
    prereqs9.add("Insect 2");
    prereqs9.add("Blood 2");
    Mutation ExtremeHematophagy = new Mutation("Extreme Hematophagy", 24, 5, 0, 0, prereqs9);
    tMutations.add(ExtremeHematophagy);
    
    ArrayList<String> prereqs10 = new ArrayList<String>();
    prereqs10.add("Air 2");
    prereqs10.add("Water 2");
    Mutation ExtremeBioaerosol = new Mutation("Extreme Bioaerosol", 16, 5, 0, 0, prereqs10);
    tMutations.add(ExtremeBioaerosol);
  }
  
  Disease(){
    infectivity = 0.01;
    severity = 0;
    lethality = 0;
    inputTMutations();
  }
}
