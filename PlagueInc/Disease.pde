class Disease{
  ArrayList<Mutation> allTMutations;
  ArrayList<Mutation> allSMutations;
  ArrayList<Mutation> allAMutations;
  ArrayList<Mutation> tMutations;
  ArrayList<Mutation> sMutations;
  ArrayList<Mutation> aMutations;
  ArrayList<Mutation> accessibleTMutations;
  ArrayList<Mutation> accessibleSMutations;
  ArrayList<Mutation> accessibleAMutations;
  double infectivity; //should start at 0.0005 and hit till 0.01 w/o any extra mutations
  double severity;
  double lethality;
  
  void inputTMutations(){
    ArrayList<String> prereqs = new ArrayList<String>();
    Mutation Bird1 = new Mutation("Bird 1", 12, 3, 0, 0, prereqs);
    allTMutations.add(Bird1);
    
    ArrayList<String> prereqs1 = new ArrayList<String>();
    prereqs1.add("Bird 1");
    Mutation Bird2 = new Mutation("Bird 2", 18, 6, 0, 0, prereqs1);
    allTMutations.add(Bird2);
    
    Mutation Rodent1 = new Mutation("Rodent 1", 10, 3, 0, 0, prereqs);
    allTMutations.add(Rodent1);
    
    ArrayList<String> prereqs2 = new ArrayList<String>();
    prereqs2.add("Rodent 1");
    Mutation Rodent2 = new Mutation("Rodent 2", 16, 6, 0, 0, prereqs2);
    allTMutations.add(Rodent2);
    
    Mutation Livestock1 = new Mutation("Livestock 1", 7, 2, 0, 0, prereqs);
    allTMutations.add(Livestock1);
    
    ArrayList<String> prereqs3 = new ArrayList<String>();
    prereqs3.add("Livestock 1");
    Mutation Livestock2 = new Mutation("Livestock 2", 12, 4, 0, 0, prereqs3);
    allTMutations.add(Livestock2);
    
    Mutation Insect1 = new Mutation("Insect 1", 9, 4, 0, 0, prereqs);
    allTMutations.add(Insect1);
    
    ArrayList<String> prereqs4 = new ArrayList<String>();
    prereqs4.add("Insect 1");
    Mutation Insect2 = new Mutation("Insect 2", 20, 8, 0, 0, prereqs4);
    allTMutations.add(Insect2);
    
    Mutation Blood1 = new Mutation("Blood 1", 8, 2, 0, 0, prereqs);
    allTMutations.add(Blood1);
    
    ArrayList<String> prereqs5 = new ArrayList<String>();
    prereqs5.add("Blood 1");
    Mutation Blood2 = new Mutation("Blood 2", 13, 4, 0, 0, prereqs5);
    allTMutations.add(Blood2);
    
    Mutation Air1 = new Mutation("Air 1", 9, 4, 0, 0, prereqs);
    allTMutations.add(Air1);
    
    ArrayList<String> prereqs6 = new ArrayList<String>();
    prereqs6.add("Air 1");
    Mutation Air2 = new Mutation("Air 2", 14, 7, 0, 0, prereqs6);
    allTMutations.add(Air2);
    
    Mutation Water1 = new Mutation("Water 1", 9, 4, 0, 0, prereqs);
    allTMutations.add(Water1);
    
    ArrayList<String> prereqs7 = new ArrayList<String>();
    prereqs7.add("Water 1");
    Mutation Water2 = new Mutation("Water 2", 15, 8, 0, 0, prereqs7);
    allTMutations.add(Water2);
    
    ArrayList<String> prereqs8 = new ArrayList<String>();
    prereqs8.add("Bird 2");
    prereqs8.add("Rodent 2");
    prereqs8.add("Livestock 2");
    Mutation ExtremeZoonosis = new Mutation("Extreme Zoonosis", 22, 5, 0, 0, prereqs8);
    allTMutations.add(ExtremeZoonosis);
    
    ArrayList<String> prereqs9 = new ArrayList<String>();
    prereqs9.add("Insect 2");
    prereqs9.add("Blood 2");
    Mutation ExtremeHematophagy = new Mutation("Extreme Hematophagy", 24, 5, 0, 0, prereqs9);
    allTMutations.add(ExtremeHematophagy);
    
    ArrayList<String> prereqs10 = new ArrayList<String>();
    prereqs10.add("Air 2");
    prereqs10.add("Water 2");
    Mutation ExtremeBioaerosol = new Mutation("Extreme Bioaerosol", 16, 5, 0, 0, prereqs10);
    allTMutations.add(ExtremeBioaerosol);
  }
  
  void inputSMutations(){
    
  }
  
  Disease(){
    infectivity = 0.0005;
    severity = 0;
    lethality = 0;
    tMutations = new ArrayList<Mutation>();
    sMutations = new ArrayList<Mutation>();
    aMutations = new ArrayList<Mutation>();
    accessibleTMutations = new ArrayList<Mutation>();
    accessibleSMutations = new ArrayList<Mutation>();
    accessibleAMutations = new ArrayList<Mutation>();
    allTMutations = new ArrayList<Mutation>();
    allSMutations = new ArrayList<Mutation>();
    allAMutations = new ArrayList<Mutation>();
    inputTMutations();
    diseaseSetup();
  }
  
  void diseaseSetup(){
    tMutations = new ArrayList();
    sMutations = new ArrayList();
    aMutations = new ArrayList();
    accessibleTMutations = new ArrayList();
    for (int i=0; i<allTMutations.size(); i++){
      if (allTMutations.get(i).prereqs.size() == 0){
        accessibleTMutations.add(allTMutations.get(i));
      }
    }
    accessibleSMutations = new ArrayList();
    accessibleAMutations = new ArrayList();
  }
  
  boolean in(Mutation mut, ArrayList<Mutation> arr){
    for (int i=0; i<arr.size(); i++){
      if (mut.name.equals(arr.get(i).name)){
        return true; 
      }
    }
    return false;
  }

  // arr1 has to be smaller than arr2
  boolean arrIn(ArrayList<String> arr1, ArrayList<Mutation> arr2){
    if (arr1.size()>arr2.size()){
      return false; 
    }
    int found = 0;
    for (int i=0; i<arr1.size(); i++){
      for (int j=0; j<arr2.size(); j++){
        if (arr1.get(i).equals(arr2.get(j).name)){
          found++;
        }
      }

    }
    if (found == arr1.size()){
      return true;
    }
    return false;
  }
  
  boolean addTMutation(Mutation m){
    if (points < m.cost){
      return false;
    }
    points -= m.cost;
    accessibleTMutations.remove(m);
    tMutations.add(m);
    infectivity += m.infIncrement / 10000.0;
    severity += m.sevIncrement / 10000.0;
    lethality += m.letIncrement / 10000.0;
    for (int i=0; i<allTMutations.size(); i++){
      Mutation mut = allTMutations.get(i);
      if (arrIn(mut.prereqs, tMutations) && !(in(mut, accessibleTMutations)) && !(in(mut, tMutations))){
        accessibleTMutations.add(mut);
      }
    }
    return true;
  }
  
  boolean addSMutation(Mutation m){
    if (points < m.cost){
      return false;
    }
    accessibleSMutations.remove(m);
    sMutations.add(m);
    return true;
  }
  
  boolean addAMutation(Mutation m){
    if (points < m.cost){
      return false;
    }
    accessibleAMutations.remove(m);
    aMutations.add(m);
    return true;
  }
}
