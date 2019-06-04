class Disease {
  ArrayList<Mutation> allTMutations;
  ArrayList<Mutation> allSMutations;
  ArrayList<Mutation> allAMutations;
  ArrayList<Mutation> tMutations;
  ArrayList<Mutation> sMutations;
  ArrayList<Mutation> aMutations;
  ArrayList<Mutation> accessibleTMutations;
  ArrayList<Mutation> accessibleSMutations;
  ArrayList<Mutation> accessibleAMutations;
  ArrayList<Mutation> acquiredMutations;
  double infectivity; //should start at 0.0005 and hit till 0.01 w/o any extra mutations
  double severity;
  double lethality;

  void inputTMutations() {
    ArrayList<String> prereqs = new ArrayList<String>();
    Mutation Bird1 = new Mutation("Bird 1", 12, 3, 0, 0, prereqs, "tMutation");
    allTMutations.add(Bird1);

    ArrayList<String> prereqs1 = new ArrayList<String>();
    prereqs1.add("Bird 1");
    Mutation Bird2 = new Mutation("Bird 2", 18, 6, 0, 0, prereqs1, "tMutation");
    allTMutations.add(Bird2);

    Mutation Rodent1 = new Mutation("Rodent 1", 10, 3, 0, 0, prereqs, "tMutation");
    allTMutations.add(Rodent1);

    ArrayList<String> prereqs2 = new ArrayList<String>();
    prereqs2.add("Rodent 1");
    Mutation Rodent2 = new Mutation("Rodent 2", 16, 6, 0, 0, prereqs2, "tMutation");
    allTMutations.add(Rodent2);

    Mutation Livestock1 = new Mutation("Livestock 1", 7, 2, 0, 0, prereqs, "tMutation");
    allTMutations.add(Livestock1);

    ArrayList<String> prereqs3 = new ArrayList<String>();
    prereqs3.add("Livestock 1");
    Mutation Livestock2 = new Mutation("Livestock 2", 12, 4, 0, 0, prereqs3, "tMutation");
    allTMutations.add(Livestock2);

    Mutation Insect1 = new Mutation("Insect 1", 9, 4, 0, 0, prereqs, "tMutation");
    allTMutations.add(Insect1);

    ArrayList<String> prereqs4 = new ArrayList<String>();
    prereqs4.add("Insect 1");
    Mutation Insect2 = new Mutation("Insect 2", 20, 8, 0, 0, prereqs4, "tMutation");
    allTMutations.add(Insect2);

    Mutation Blood1 = new Mutation("Blood 1", 8, 2, 0, 0, prereqs, "tMutation");
    allTMutations.add(Blood1);

    ArrayList<String> prereqs5 = new ArrayList<String>();
    prereqs5.add("Blood 1");
    Mutation Blood2 = new Mutation("Blood 2", 13, 4, 0, 0, prereqs5, "tMutation");
    allTMutations.add(Blood2);

    Mutation Air1 = new Mutation("Air 1", 9, 4, 0, 0, prereqs, "tMutation");
    allTMutations.add(Air1);

    ArrayList<String> prereqs6 = new ArrayList<String>();
    prereqs6.add("Air 1");
    Mutation Air2 = new Mutation("Air 2", 14, 7, 0, 0, prereqs6, "tMutation");
    allTMutations.add(Air2);

    Mutation Water1 = new Mutation("Water 1", 9, 4, 0, 0, prereqs, "tMutation");
    allTMutations.add(Water1);

    ArrayList<String> prereqs7 = new ArrayList<String>();
    prereqs7.add("Water 1");
    Mutation Water2 = new Mutation("Water 2", 15, 8, 0, 0, prereqs7, "tMutation");
    allTMutations.add(Water2);

    ArrayList<String> prereqs8 = new ArrayList<String>();
    prereqs8.add("Bird 2");
    prereqs8.add("Rodent 2");
    prereqs8.add("Livestock 2");
    Mutation ExtremeZoonosis = new Mutation("Extreme Zoonosis", 22, 5, 0, 0, prereqs8, "tMutation");
    allTMutations.add(ExtremeZoonosis);

    ArrayList<String> prereqs9 = new ArrayList<String>();
    prereqs9.add("Insect 2");
    prereqs9.add("Blood 2");
    Mutation ExtremeHematophagy = new Mutation("Extreme Hematophagy", 24, 5, 0, 0, prereqs9, "tMutation");
    allTMutations.add(ExtremeHematophagy);

    ArrayList<String> prereqs10 = new ArrayList<String>();
    prereqs10.add("Air 2");
    prereqs10.add("Water 2");
    Mutation ExtremeBioaerosol = new Mutation("Extreme Bioaerosol", 16, 5, 0, 0, prereqs10, "tMutation");
    allTMutations.add(ExtremeBioaerosol);
  }

  void inputSMutations() {
    ArrayList<String> sprereqs = new ArrayList<String>();
    Mutation Nausea = new Mutation("Nausea (Tier 1)", 2, 1, 1, 0, sprereqs, "sMutation");
    allSMutations.add(Nausea);
    Mutation Coughing = new Mutation("Coughing (Tier 1)", 4, 3, 1, 0, sprereqs, "sMutation");
    allSMutations.add(Coughing);
    Mutation Rash = new Mutation("Rash (Tier 1)", 3, 2, 1, 0, sprereqs, "sMutation");
    allSMutations.add(Rash);
    Mutation Insomnia = new Mutation("Insomnia (Tier 1)", 2, 0, 3, 0, sprereqs, "sMutation");
    allSMutations.add(Insomnia);
    Mutation Cysts = new Mutation("Cysts (Tier 1)", 2, 2, 2, 0, sprereqs, "sMutation");
    allSMutations.add(Cysts);
    Mutation Anemia = new Mutation("Anemia (Tier 1)", 2, 1, 1, 0, sprereqs, "sMutation");
    allSMutations.add(Anemia);

    ArrayList<String> sprereqs1 = new ArrayList<String>();
    sprereqs1.add("Nausea (Tier 1)");
    sprereqs1.add("Pulmonary Edema (Tier 3)");
    sprereqs1.add("Diarrhea (Tier 3)");
    Mutation Vomiting = new Mutation("Vomiting (Tier 2)", 3, 3, 1, 0, sprereqs1, "sMutation");
    allSMutations.add(Vomiting);

    ArrayList<String> sprereqs2 = new ArrayList<String>();
    sprereqs2.add("Coughing (Tier 1)");
    sprereqs2.add("Pulmonary Edema (Tier 3)");
    sprereqs2.add("Pulmonary Fibrosis (Tier 3)");
    Mutation Pneumonia = new Mutation("Pneumonia (Tier 2)", 3, 3, 2, 0, sprereqs2, "sMutation");
    allSMutations.add(Pneumonia);

    ArrayList<String> sprereqs3 = new ArrayList<String>();
    sprereqs3.add("Coughing (Tier 1)");
    sprereqs3.add("Fever (Tier 3)");
    sprereqs3.add("Immune Suppression (Tier 3)");
    Mutation Sneezing = new Mutation("Sneezing (Tier 2)", 5, 5, 1, 0, sprereqs3, "sMutation");
    allSMutations.add(Sneezing);

    ArrayList<String> sprereqs4 = new ArrayList<String>();
    sprereqs4.add("Fever (Tier 3)");
    sprereqs4.add("Rash (Tier 1)");
    sprereqs4.add("Skin Lesions (Tier 3)");
    Mutation Sweating = new Mutation("Sweating (Tier 2)", 3, 2, 1, 0, sprereqs4, "sMutation");
    allSMutations.add(Sweating);

    ArrayList<String> sprereqs5 = new ArrayList<String>();
    sprereqs5.add("Insomnia (Tier 1)");
    sprereqs5.add("Inflammation (Tier 3)");
    sprereqs5.add("Seizures (Tier 3)");
    Mutation Paranoia = new Mutation("Paranoia (Tier 2)", 4, 0, 4, 0, sprereqs5, "sMutation");
    allSMutations.add(Paranoia);

    ArrayList<String> sprereqs6 = new ArrayList<String>();
    sprereqs6.add("Inflammation (Tier 3)");
    sprereqs6.add("Cysts (Tier 1)");
    sprereqs6.add("Paralysis (Tier 3)");
    Mutation Hypersensitivity = new Mutation("Hypersensitivity (Tier 2)", 2, 1, 2, 0, sprereqs6, "sMutation");
    allSMutations.add(Hypersensitivity);

    ArrayList<String> sprereqs7 = new ArrayList<String>();
    sprereqs7.add("Cysts (Tier 1)");
    sprereqs7.add("Tumors (Tier 3)");
    sprereqs7.add("Systemic Infection (Tier 3)");
    Mutation Abscesses = new Mutation("Abscesses (Tier 2)", 2, 4, 4, 0, sprereqs7, "sMutation");
    allSMutations.add(Abscesses);

    ArrayList<String> sprereqs8 = new ArrayList<String>();
    sprereqs8.add("Tumors (Tier 3)");
    sprereqs8.add("Anemia (Tier 1)");
    sprereqs8.add("Internal Hemorrhaging (Tier 3)");
    Mutation Hemophilia = new Mutation("Hemophilia (Tier 2)", 3, 4, 3, 0, sprereqs8, "sMutation");
    allSMutations.add(Hemophilia);

    ArrayList<String> sprereqs9 = new ArrayList<String>();
    sprereqs9.add("Vomiting (Tier 2)");
    sprereqs9.add("Pneumonia (Tier 2)");
    sprereqs9.add("Diarrhea (Tier 3)");
    sprereqs9.add("Pulmonary Fibrosis (Tier 3)");
    Mutation PulmonaryEdema = new Mutation("Pulmonary Edema (Tier 3)", 7, 5, 4, 2, sprereqs9, "sMutation");
    allSMutations.add(PulmonaryEdema);

    ArrayList<String> sprereqs10 = new ArrayList<String>();
    sprereqs10.add("Sneezing (Tier 2)");
    sprereqs10.add("Sweating (Tier 2)");
    sprereqs10.add("Immune Suppression (Tier 3)");
    sprereqs10.add("Skin Lesions (Tier 3)");
    Mutation Fever = new Mutation("Fever (Tier 3)", 9, 4, 3, 3, sprereqs10, "sMutation");
    allSMutations.add(Fever);

    ArrayList<String> sprereqs11 = new ArrayList<String>();
    sprereqs10.add("Paranoia (Tier 2)");
    sprereqs10.add("Hypersensitivity (Tier 2)");
    sprereqs10.add("Seizures (Tier 3)");
    sprereqs10.add("Paralysis (Tier 3)");
    Mutation Inflammation = new Mutation("Inflammation (Tier 3)", 5, 2, 2, 2, sprereqs10, "sMutation");
    allSMutations.add(Inflammation);

    ArrayList<String> sprereqs12 = new ArrayList<String>();
    sprereqs12.add("Systemic Infection (Tier 3)");
    sprereqs12.add("Internal Hemorrhaging (Tier 3)");
    Mutation Tumors = new Mutation("Tumors (Tier 3)", 11, 2, 0, 4, sprereqs12, "sMutation");
    allSMutations.add(Tumors);

    ArrayList<String> sprereqs13 = new ArrayList<String>();
    sprereqs13.add("Vomiting (Tier 2)");
    sprereqs13.add("Pulmonary Edema (Tier 3)");
    sprereqs13.add("Dysentery (Tier 4)");
    Mutation Diarrhea = new Mutation("Diarrhea (Tier 3)", 6, 6, 4, 0, sprereqs13, "sMutation");
    allSMutations.add(Diarrhea);

    ArrayList<String> sprereqs14 = new ArrayList<String>();
    sprereqs14.add("Pneumonia (Tier 2)");
    sprereqs14.add("Pulmonary Edema (Tier 3)");
    sprereqs14.add("Total Organ Failure (Tier 4)");
    Mutation PulmonaryFibrosis = new Mutation("Pulmonary Fibrosis (Tier 3)", 6, 3, 3, 2, sprereqs14, "sMutation");
    allSMutations.add(PulmonaryFibrosis);

    ArrayList<String> sprereqs15 = new ArrayList<String>();
    sprereqs15.add("Sneezing (Tier 2)");
    sprereqs15.add("Fever (Tier 3)");
    sprereqs15.add("Total Organ Failure (Tier 4)");
    Mutation ImmuneSuppression = new Mutation("Immune Suppression (Tier 3)", 12, 2, 6, 4, sprereqs15, "sMutation");
    allSMutations.add(ImmuneSuppression);

    ArrayList<String> sprereqs16 = new ArrayList<String>();
    sprereqs16.add("Sweating (Tier 2)");
    sprereqs16.add("Fever (Tier 3)");
    sprereqs16.add("Necrosis (Tier 4)");
    Mutation SkinLesions = new Mutation("Skin Lesions (Tier 3)", 8, 11, 4, 0, sprereqs16, "sMutation");
    allSMutations.add(SkinLesions);

    ArrayList<String> sprereqs17 = new ArrayList<String>();
    sprereqs17.add("Paranoia (Tier 2)");
    sprereqs17.add("Inflammation (Tier 3)");
    sprereqs17.add("Insanity (Tier 4)");
    Mutation Seizures = new Mutation("Seizures (Tier 3)", 4, 1, 7, 3, sprereqs17, "sMutation");
    allSMutations.add(Seizures);

    ArrayList<String> sprereqs18 = new ArrayList<String>();
    sprereqs18.add("Inflammation (Tier 3)");
    sprereqs18.add("Hypersensitivity (Tier 2)");
    sprereqs18.add("Coma (Tier 4)");
    Mutation Paralysis = new Mutation("Paralysis (Tier 3)", 10, 1, 5, 1, sprereqs18, "sMutation");
    allSMutations.add(Paralysis);

    ArrayList<String> sprereqs19 = new ArrayList<String>();
    sprereqs19.add("Coma (Tier 4)");
    sprereqs19.add("Tumors (Tier 3)");
    sprereqs19.add("Abscesses (Tier 2)");
    Mutation SystemicInfection = new Mutation("Systemic Infection (Tier 3)", 17, 6, 7, 6, sprereqs19, "sMutation");
    allSMutations.add(SystemicInfection);

    ArrayList<String> sprereqs20 = new ArrayList<String>();
    sprereqs20.add("Tumors (Tier 3)");
    sprereqs20.add("Hemophilia (Tier 2)");
    sprereqs20.add("Hemorrhagic Shock (Tier 4)");
    Mutation InternalHemorrhaging = new Mutation("Internal Hemorrhaging (Tier 3)", 12, 0, 9, 7, sprereqs20, "sMutation");
    allSMutations.add(InternalHemorrhaging);

    ArrayList<String> sprereqs21 = new ArrayList<String>();
    sprereqs21.add("Diarrhea (Tier 3)");
    sprereqs21.add("Insanity (Tier 4)");
    Mutation Dysentery = new Mutation("Dysentery (Tier 4)", 19, 8, 15, 8, sprereqs21, "sMutation");
    allSMutations.add(Dysentery);

    ArrayList<String> sprereqs22 = new ArrayList<String>();
    sprereqs22.add("Pulmonary Fibrosis (Tier 3)");
    sprereqs22.add("Immune Suppression (Tier 3)");
    sprereqs22.add("Coma (Tier 4)");
    Mutation TotalOrganFailure = new Mutation("Total Organ Failure (Tier 4)", 28, 0, 20, 25, sprereqs22, "sMutation");
    allSMutations.add(TotalOrganFailure);

    ArrayList<String> sprereqs23 = new ArrayList<String>();
    sprereqs23.add("Skin Lesions (Tier 3)");
    sprereqs23.add("Hemorrhagic Shock (Tier 4)");
    Mutation Necrosis = new Mutation("Necrosis (Tier 4)", 27, 10, 20, 13, sprereqs23, "sMutation");
    allSMutations.add(Necrosis);

    ArrayList<String> sprereqs24 = new ArrayList<String>();
    sprereqs24.add("Seizures (Tier 3)");
    sprereqs24.add("Dysentery (Tier 4)");
    Mutation Insanity = new Mutation("Insanity (Tier 4)", 18, 6, 15, 0, sprereqs24, "sMutation");
    allSMutations.add(Insanity);

    ArrayList<String> sprereqs25 = new ArrayList<String>();
    sprereqs25.add("Paralysis (Tier 3)");
    sprereqs25.add("Systemic Infection (Tier 3)");
    sprereqs25.add("Total Organ Failure (Tier 4)");
    Mutation Coma = new Mutation("Coma (Tier 4)", 21, 0, 15, 2, sprereqs25, "sMutation");
    allSMutations.add(Coma);

    ArrayList<String> sprereqs26 = new ArrayList<String>();
    sprereqs26.add("Internal Hemorrhaging (Tier 3)");
    sprereqs26.add("Necrosis (Tier 4)");
    Mutation HemorrhagicShock = new Mutation("Hemorrhagic Shock (Tier 4)", 23, 0, 15, 15, sprereqs26, "sMutation");
    allSMutations.add(HemorrhagicShock);
  }

  Disease() {
    infectivity = 0.0005;
    severity = 0;
    lethality = 0.0;
    tMutations = new ArrayList<Mutation>();
    sMutations = new ArrayList<Mutation>();
    aMutations = new ArrayList<Mutation>();
    accessibleTMutations = new ArrayList<Mutation>();
    accessibleSMutations = new ArrayList<Mutation>();
    accessibleAMutations = new ArrayList<Mutation>();
    allTMutations = new ArrayList<Mutation>();
    allSMutations = new ArrayList<Mutation>();
    allAMutations = new ArrayList<Mutation>();
    acquiredMutations = new ArrayList<Mutation>();
    inputTMutations();
    inputSMutations();
    diseaseSetup();
  }

  void diseaseSetup() {
    tMutations = new ArrayList();
    sMutations = new ArrayList();
    aMutations = new ArrayList();
    accessibleTMutations = new ArrayList();
    for (int i=0; i<allTMutations.size(); i++) {
      if (allTMutations.get(i).prereqs.size() == 0) {
        accessibleTMutations.add(allTMutations.get(i));
      }
    }
    accessibleSMutations = new ArrayList();
    for (int i=0; i<allSMutations.size(); i++) {
      if (allSMutations.get(i).prereqs.size() == 0) {
        accessibleSMutations.add(allSMutations.get(i));
      }
    }
    accessibleAMutations = new ArrayList();
  }

  boolean in(Mutation mut, ArrayList<Mutation> arr) {
    for (int i=0; i<arr.size(); i++) {
      if (mut.name.equals(arr.get(i).name)) {
        return true;
      }
    }
    return false;
  }

  // arr1 has to be smaller than arr2
  boolean arrIn(ArrayList<String> arr1, ArrayList<Mutation> arr2) {
    if (arr1.size()>arr2.size()) {
      return false;
    }
    int found = 0;
    for (int i=0; i<arr1.size(); i++) {
      for (int j=0; j<arr2.size(); j++) {
        if (arr1.get(i).equals(arr2.get(j).name)) {
          found++;
        }
      }
    }
    if (found == arr1.size()) {
      return true;
    }
    return false;
  }

  boolean arrSIn(ArrayList<String> arr1, ArrayList<Mutation> arr2) {
    if (arr2.size() == 0) {
      return false;
    }
    for (int i=0; i<arr1.size(); i++) {
      for (int j=0; j<arr2.size(); j++) {
        if (arr1.get(i).equals(arr2.get(j).name)) {
          return true;
        }
      }
    }
    return false;
  }

  void updateAccessibleMutations(){
    for (int i=0; i<tMutations.size(); i++){
      if (in(tMutations.get(i), accessibleTMutations)){
        accessibleTMutations.remove(tMutations.get(i));
      }
    }
    for (int i=0; i<sMutations.size(); i++){
      if (in(sMutations.get(i), accessibleSMutations)){
        accessibleSMutations.remove(sMutations.get(i));
      }
    }
  }

  void addRandomMutation(){
    Mutation mut;
    if (Math.random() < 0.5){
      int index = (int) Math.floor(Math.random() * (accessibleTMutations.size() + 1));
      mut = accessibleTMutations.get(index);
      tMutations.add(mut);
      accessibleTMutations.remove(mut);
      for (int i=0; i<allTMutations.size(); i++) {
        Mutation mut2 = allTMutations.get(i);
        //if prereqs are met and mutation is not already in the dropdownlist
        if (arrIn(mut2.prereqs, tMutations) && !(in(mut2, accessibleTMutations)) && !(in(mut2, tMutations))) {
          accessibleTMutations.add(mut2);
        }
      }
    } else {
      int index = (int) Math.floor(Math.random() * (accessibleSMutations.size() + 1));
      mut = accessibleSMutations.get(index);
      sMutations.add(mut);
      accessibleSMutations.remove(mut);
      for (int i=0; i<allSMutations.size(); i++) {
        Mutation mut2 = allSMutations.get(i);
        //if prereqs are met and mutation is not already in the dropdownlist
        if (arrSIn(mut2.prereqs, sMutations) && !(in(mut2, accessibleSMutations)) && !(in(mut2, sMutations))) {
          accessibleSMutations.add(mut2);
        }
      }
    }
    news.add(mut.name + " mutated.");
    noStroke();
    fill(205);
    rect(1220, 215, 160, 100);
    fill(0, 0, 0);
    text(news.get(news.size() - 1), 1220, 220, 150, 100);
    dSell.addItem(mut.name, 0);
    acquiredMutations.add(0, mut);
    infectivity += mut.infIncrement / 10000.0;
    severity += mut.sevIncrement / 10000.0;
    lethality += mut.letIncrement / 10000.0;
  }

  boolean addTMutation(Mutation m) {
    if (points < m.cost) {
      return false;
    }
    points -= m.cost;
    accessibleTMutations.remove(m);
    tMutations.add(m);
    acquiredMutations.add(0, m);
    infectivity += m.infIncrement / 10000.0;
    severity += m.sevIncrement / 10000.0;
    lethality += m.letIncrement / 10000.0;
    for (int i=0; i<allTMutations.size(); i++) {
      Mutation mut = allTMutations.get(i);
      //if prereqs are met and mutation is not already in the dropdownlist
      if (arrIn(mut.prereqs, tMutations) && !(in(mut, accessibleTMutations)) && !(in(mut, tMutations))) {
        accessibleTMutations.add(mut);
      }
    }
    return true;
  }

  boolean addSMutation(Mutation m) {
    if (points < m.cost) {
      return false;
    }
    accessibleSMutations.remove(m);
    sMutations.add(m);
    acquiredMutations.add(0, m);
    points -= m.cost;
    infectivity += m.infIncrement / 10000.0;
    severity += m.sevIncrement / 10000.0;
    lethality += m.letIncrement / 10000.0;
    for (int i=0; i<allSMutations.size(); i++) {
      Mutation mut = allSMutations.get(i);
      //if prereqs are met and mutation is not already in the dropdownlist
      if (arrSIn(mut.prereqs, sMutations) && !(in(mut, accessibleSMutations)) && !(in(mut, sMutations))) {
        accessibleSMutations.add(mut);
      }
    }
    return true;
  }

  boolean addAMutation(Mutation m) {
    if (points < m.cost) {
      return false;
    }
    accessibleAMutations.remove(m);
    aMutations.add(m);
    return true;
  }

  boolean sell(Mutation mut) {
    String accMutName;
    Mutation accMut;
    //checks if the post-reqs of the mutation the player is trying
    //to sell is in acquired mutations. If so, then don't
    //allow player to sell the mutation (this is how it works in-game too)
    for (int i = 0; i < acquiredMutations.size(); i++) {
      accMut = acquiredMutations.get(i);
      for (int j = 0; j < accMut.prereqs().size(); j++) {
        if (accMut.prereqs().get(j).equals(mut.name)) {
          return false;
        }
      }
    }
    
    if (acquiredMutations.size() != 0) {
      infectivity -= mut.infIncrement() / 10000.0;
      severity -= mut.sevIncrement() / 10000.0;
      lethality -= mut.letIncrement() / 10000.0;
    }
    acquiredMutations.remove(mut);
    points+= mut.cost();
    
    //re-adds mutation into the proper place (below previous tier levels) in the 
    //accessible mutation ArrayLists
    if (mut.type.equals("tMutation")) {
      //removes post-reqs when selling the mutation
      for (int i = 0; i < accessibleTMutations.size(); i++) {
        accMut = accessibleTMutations.get(i);
        for (int j = 0; j < accMut.prereqs().size(); j++) {
          if (accMut.prereqs().get(j).equals(mut.name)) {
            accessibleTMutations.remove(accMut);
            tMutations.remove(mut);
            i--;
          }
        }
      }

      for (int i = 0; i < accessibleTMutations.size(); i++) {
        accMutName = accessibleTMutations.get(i).name;
        if (accMutName.substring(accMutName.length()-1).compareTo(mut.name.substring(mut.name.length()-1)) >= 0) {
          accessibleTMutations.add(i, mut);
          refreshDropDownList("<Transmission>");
          return true;
        }
      }
      //if didn't work, that means mut is a higher tier than any other mutation in the
      //accessible mutation ArrayLists, and thus cannot be compared with any of them.
      //the solution is to add mut to the end
      accessibleTMutations.add(mut);
      refreshDropDownList("<Transmission>");
      return true;
    } else if (mut.type.equals("sMutation")) {
      //removes post-reqs when selling the mutation
      for (int i = 0; i < accessibleSMutations.size(); i++) {
        accMut = accessibleSMutations.get(i);
        for (int j = 0; j < accMut.prereqs().size(); j++) {
          if (accMut.prereqs().get(j).equals(mut.name)) {
            accessibleSMutations.remove(accMut);
            sMutations.remove(mut);
            i--; //so that indexing re-calibrates itself after removing an element from list
          }
        }
      }

      for (int i = 0; i < accessibleSMutations.size(); i++) {
        accMutName = accessibleSMutations.get(i).name;
        if (accMutName.substring(accMutName.length()-8).compareTo(mut.name.substring(mut.name.length()-8)) >= 0) {
          accessibleSMutations.add(i, mut);
          refreshDropDownList("<Symptoms>");
          return true;
        }
      }
      accessibleSMutations.add(mut);
      refreshDropDownList("<Symptoms>");
      return true;
    } else if (mut.type.equals("aMutation")) {
      //implement later
    }
    return false;
  }
}
