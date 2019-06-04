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
    ArrayList<Mutation> prereqs = new ArrayList<Mutation>();
    Mutation Bird1 = new Mutation("Bird 1", 12, 3, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Bird1);

    ArrayList<Mutation> prereqs1 = new ArrayList<Mutation>();
    prereqs1.add(Bird1);
    Mutation Bird2 = new Mutation("Bird 2", 18, 6, 0, 0, prereqs1, "tMutation", false);
    allTMutations.add(Bird2);

    Mutation Rodent1 = new Mutation("Rodent 1", 10, 3, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Rodent1);

    ArrayList<Mutation> prereqs2 = new ArrayList<Mutation>();
    prereqs2.add(Rodent1);
    Mutation Rodent2 = new Mutation("Rodent 2", 16, 6, 0, 0, prereqs2, "tMutation", false);
    allTMutations.add(Rodent2);

    Mutation Livestock1 = new Mutation("Livestock 1", 7, 2, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Livestock1);

    ArrayList<Mutation> prereqs3 = new ArrayList<Mutation>();
    prereqs3.add(Livestock1);
    Mutation Livestock2 = new Mutation("Livestock 2", 12, 4, 0, 0, prereqs3, "tMutation", false);
    allTMutations.add(Livestock2);

    Mutation Insect1 = new Mutation("Insect 1", 9, 4, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Insect1);

    ArrayList<Mutation> prereqs4 = new ArrayList<Mutation>();
    prereqs4.add(Insect1);
    Mutation Insect2 = new Mutation("Insect 2", 20, 8, 0, 0, prereqs4, "tMutation", false);
    allTMutations.add(Insect2);

    Mutation Blood1 = new Mutation("Blood 1", 8, 2, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Blood1);

    ArrayList<Mutation> prereqs5 = new ArrayList<Mutation>();
    prereqs5.add(Blood1);
    Mutation Blood2 = new Mutation("Blood 2", 13, 4, 0, 0, prereqs5, "tMutation", false);
    allTMutations.add(Blood2);

    Mutation Air1 = new Mutation("Air 1", 9, 4, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Air1);

    ArrayList<Mutation> prereqs6 = new ArrayList<Mutation>();
    prereqs6.add(Air1);
    Mutation Air2 = new Mutation("Air 2", 14, 7, 0, 0, prereqs6, "tMutation", false);
    allTMutations.add(Air2);

    Mutation Water1 = new Mutation("Water 1", 9, 4, 0, 0, prereqs, "tMutation", true);
    allTMutations.add(Water1);

    ArrayList<Mutation> prereqs7 = new ArrayList<Mutation>();
    prereqs7.add(Water1);
    Mutation Water2 = new Mutation("Water 2", 15, 8, 0, 0, prereqs7, "tMutation", false);
    allTMutations.add(Water2);

    ArrayList<Mutation> prereqs8 = new ArrayList<Mutation>();
    prereqs8.add(Bird2);
    prereqs8.add(Rodent2);
    prereqs8.add(Livestock2);
    Mutation ExtremeZoonosis = new Mutation("Extreme Zoonosis", 22, 5, 0, 0, prereqs8, "tMutation", false);
    allTMutations.add(ExtremeZoonosis);

    ArrayList<Mutation> prereqs9 = new ArrayList<Mutation>();
    prereqs9.add(Insect2);
    prereqs9.add(Blood2);
    Mutation ExtremeHematophagy = new Mutation("Extreme Hematophagy", 24, 5, 0, 0, prereqs9, "tMutation", false);
    allTMutations.add(ExtremeHematophagy);

    ArrayList<Mutation> prereqs10 = new ArrayList<Mutation>();
    prereqs10.add(Air2);
    prereqs10.add(Water2);
    Mutation ExtremeBioaerosol = new Mutation("Extreme Bioaerosol", 16, 5, 0, 0, prereqs10, "tMutation", false);
    allTMutations.add(ExtremeBioaerosol);
  }

  void inputSMutations() {
    Mutation PulmonaryEdema, Diarrhea, PulmonaryFibrosis, Fever, ImmuneSuppression;
    Mutation SkinLesions, Vomiting, Dysentery, Insanity, Seizures, Paranoia;
    Mutation Inflammation, Pneumonia, Sneezing, TotalOrganFailure, Paralysis, Coma;
    Mutation SystemicInfection, Abscesses, Hypersensitivity, Sweating, Necrosis;
    Mutation Tumors, InternalHemorrhaging, HemorrhagicShock, Hemophilia;
    PulmonaryEdema = Diarrhea = PulmonaryFibrosis = Fever = ImmuneSuppression = null;
    SkinLesions = Vomiting = Dysentery = Insanity = Seizures = Paranoia = null;
    Inflammation = Pneumonia = Sneezing = TotalOrganFailure = Paralysis = Coma = null;
    SystemicInfection = Abscesses = Hypersensitivity = Sweating = Necrosis = null;
    Tumors = InternalHemorrhaging = HemorrhagicShock = Hemophilia = null;

    ArrayList<Mutation> sprereqsb1 = new ArrayList<Mutation>();
    sprereqsb1.add(Vomiting);
    Mutation Nausea = new Mutation("Nausea (Tier 1)", 2, 1, 1, 0, sprereqsb1, "sMutation", true);
    allSMutations.add(Nausea);
    
    ArrayList<Mutation> sprereqsb2 = new ArrayList<Mutation>();
    sprereqsb2.add(Pneumonia);
    sprereqsb2.add(Sneezing);
    Mutation Coughing = new Mutation("Coughing (Tier 1)", 4, 3, 1, 0, sprereqsb2, "sMutation", true);
    allSMutations.add(Coughing);
    
    ArrayList<Mutation> sprereqsb3 = new ArrayList<Mutation>();
    sprereqsb3.add(Sweating);
    Mutation Rash = new Mutation("Rash (Tier 1)", 3, 2, 1, 0, sprereqsb3, "sMutation", true);
    allSMutations.add(Rash);
    
    ArrayList<Mutation> sprereqsb4 = new ArrayList<Mutation>();
    sprereqsb4.add(Paranoia);
    Mutation Insomnia = new Mutation("Insomnia (Tier 1)", 2, 0, 3, 0, sprereqsb4, "sMutation", true);
    allSMutations.add(Insomnia);
    
    ArrayList<Mutation> sprereqsb5 = new ArrayList<Mutation>();
    sprereqsb5.add(Hypersensitivity);
    sprereqsb5.add(Abscesses);
    Mutation Cysts = new Mutation("Cysts (Tier 1)", 2, 2, 2, 0, sprereqsb5, "sMutation", true);
    allSMutations.add(Cysts);
    
    ArrayList<Mutation> sprereqsb6 = new ArrayList<Mutation>();
    sprereqsb6.add(Hemophilia);
    Mutation Anemia = new Mutation("Anemia (Tier 1)", 2, 1, 1, 0, sprereqsb6, "sMutation", true);
    allSMutations.add(Anemia);

    ArrayList<Mutation> sprereqs1 = new ArrayList<Mutation>();
    sprereqs1.add(Nausea);
    sprereqs1.add(PulmonaryEdema);
    sprereqs1.add(Diarrhea);
    Vomiting = new Mutation("Vomiting (Tier 2)", 3, 3, 1, 0, sprereqs1, "sMutation", false);
    allSMutations.add(Vomiting);

    ArrayList<Mutation> sprereqs2 = new ArrayList<Mutation>();
    sprereqs2.add(Coughing);
    sprereqs2.add(PulmonaryEdema);
    sprereqs2.add(PulmonaryFibrosis);
    Pneumonia = new Mutation("Pneumonia (Tier 2)", 3, 3, 2, 0, sprereqs2, "sMutation", false);
    allSMutations.add(Pneumonia);

    ArrayList<Mutation> sprereqs3 = new ArrayList<Mutation>();
    sprereqs3.add(Coughing);
    sprereqs3.add(Fever);
    sprereqs3.add(ImmuneSuppression);
    Sneezing = new Mutation("Sneezing (Tier 2)", 5, 5, 1, 0, sprereqs3, "sMutation", false);
    allSMutations.add(Sneezing);

    ArrayList<Mutation> sprereqs4 = new ArrayList<Mutation>();
    sprereqs4.add(Fever);
    sprereqs4.add(Rash);
    sprereqs4.add(SkinLesions);
    Sweating = new Mutation("Sweating (Tier 2)", 3, 2, 1, 0, sprereqs4, "sMutation", false);
    allSMutations.add(Sweating);

    ArrayList<Mutation> sprereqs5 = new ArrayList<Mutation>();
    sprereqs5.add(Insomnia);
    sprereqs5.add(Inflammation);
    sprereqs5.add(Seizures);
    Paranoia = new Mutation("Paranoia (Tier 2)", 4, 0, 4, 0, sprereqs5, "sMutation", false);
    allSMutations.add(Paranoia);

    ArrayList<Mutation> sprereqs6 = new ArrayList<Mutation>();
    sprereqs6.add(Inflammation);
    sprereqs6.add(Cysts);
    sprereqs6.add(Paralysis);
    Hypersensitivity = new Mutation("Hypersensitivity (Tier 2)", 2, 1, 2, 0, sprereqs6, "sMutation", false);
    allSMutations.add(Hypersensitivity);

    ArrayList<Mutation> sprereqs7 = new ArrayList<Mutation>();
    sprereqs7.add(Cysts);
    sprereqs7.add(Tumors);
    sprereqs7.add(SystemicInfection);
    Abscesses = new Mutation("Abscesses (Tier 2)", 2, 4, 4, 0, sprereqs7, "sMutation", false);
    allSMutations.add(Abscesses);

    ArrayList<Mutation> sprereqs8 = new ArrayList<Mutation>();
    sprereqs8.add(Tumors);
    sprereqs8.add(Anemia);
    sprereqs8.add(InternalHemorrhaging);
    Hemophilia = new Mutation("Hemophilia (Tier 2)", 3, 4, 3, 0, sprereqs8, "sMutation", false);
    allSMutations.add(Hemophilia);

    ArrayList<Mutation> sprereqs9 = new ArrayList<Mutation>();
    sprereqs9.add(Vomiting);
    sprereqs9.add(Pneumonia);
    sprereqs9.add(Diarrhea);
    sprereqs9.add(PulmonaryFibrosis);
    PulmonaryEdema = new Mutation("Pulmonary Edema (Tier 3)", 7, 5, 4, 2, sprereqs9, "sMutation", false);
    allSMutations.add(PulmonaryEdema);

    ArrayList<Mutation> sprereqs10 = new ArrayList<Mutation>();
    sprereqs10.add(Sneezing);
    sprereqs10.add(Sweating);
    sprereqs10.add(ImmuneSuppression);
    sprereqs10.add(SkinLesions);
    Fever = new Mutation("Fever (Tier 3)", 9, 4, 3, 3, sprereqs10, "sMutation", false);
    allSMutations.add(Fever);

    ArrayList<Mutation> sprereqs11 = new ArrayList<Mutation>();
    sprereqs11.add(Paranoia);
    sprereqs11.add(Hypersensitivity);
    sprereqs11.add(Seizures);
    sprereqs11.add(Paralysis);
    Inflammation = new Mutation("Inflammation (Tier 3)", 5, 2, 2, 2, sprereqs11, "sMutation", false);
    allSMutations.add(Inflammation);

    ArrayList<Mutation> sprereqs12 = new ArrayList<Mutation>();
    sprereqs12.add(Abscesses);
    sprereqs12.add(Hemophilia);
    sprereqs12.add(SystemicInfection);
    sprereqs12.add(InternalHemorrhaging);
    Tumors = new Mutation("Tumors (Tier 3)", 11, 2, 0, 4, sprereqs12, "sMutation", false);
    allSMutations.add(Tumors);

    ArrayList<Mutation> sprereqs13 = new ArrayList<Mutation>();
    sprereqs13.add(Vomiting);
    sprereqs13.add(PulmonaryEdema);
    sprereqs13.add(Dysentery);
    Diarrhea = new Mutation("Diarrhea (Tier 3)", 6, 6, 4, 0, sprereqs13, "sMutation", false);
    allSMutations.add(Diarrhea);

    ArrayList<Mutation> sprereqs14 = new ArrayList<Mutation>();
    sprereqs14.add(Pneumonia);
    sprereqs14.add(PulmonaryEdema);
    sprereqs14.add(TotalOrganFailure);
    PulmonaryFibrosis = new Mutation("Pulmonary Fibrosis (Tier 3)", 6, 3, 3, 2, sprereqs14, "sMutation", false);
    allSMutations.add(PulmonaryFibrosis);

    ArrayList<Mutation> sprereqs15 = new ArrayList<Mutation>();
    sprereqs15.add(Sneezing);
    sprereqs15.add(Fever);
    sprereqs15.add(TotalOrganFailure);
    ImmuneSuppression = new Mutation("Immune Suppression (Tier 3)", 12, 2, 6, 4, sprereqs15, "sMutation", false);
    allSMutations.add(ImmuneSuppression);

    ArrayList<Mutation> sprereqs16 = new ArrayList<Mutation>();
    sprereqs16.add(Sweating);
    sprereqs16.add(Fever);
    sprereqs16.add(Necrosis);
    SkinLesions = new Mutation("Skin Lesions (Tier 3)", 8, 11, 4, 0, sprereqs16, "sMutation", false);
    allSMutations.add(SkinLesions);

    ArrayList<Mutation> sprereqs17 = new ArrayList<Mutation>();
    sprereqs17.add(Paranoia);
    sprereqs17.add(Inflammation);
    sprereqs17.add(Insanity);
    Seizures = new Mutation("Seizures (Tier 3)", 4, 1, 7, 3, sprereqs17, "sMutation", false);
    allSMutations.add(Seizures);

    ArrayList<Mutation> sprereqs18 = new ArrayList<Mutation>();
    sprereqs18.add(Inflammation);
    sprereqs18.add(Hypersensitivity);
    sprereqs18.add(Coma);
    Paralysis = new Mutation("Paralysis (Tier 3)", 10, 1, 5, 1, sprereqs18, "sMutation", false);
    allSMutations.add(Paralysis);

    ArrayList<Mutation> sprereqs19 = new ArrayList<Mutation>();
    sprereqs19.add(Coma);
    sprereqs19.add(Tumors);
    sprereqs19.add(Abscesses);
    SystemicInfection = new Mutation("Systemic Infection (Tier 3)", 17, 6, 7, 6, sprereqs19, "sMutation", false);
    allSMutations.add(SystemicInfection);

    ArrayList<Mutation> sprereqs20 = new ArrayList<Mutation>();
    sprereqs20.add(Tumors);
    sprereqs20.add(Hemophilia);
    sprereqs20.add(HemorrhagicShock);
    InternalHemorrhaging = new Mutation("Internal Hemorrhaging (Tier 3)", 12, 0, 9, 7, sprereqs20, "sMutation", false);
    allSMutations.add(InternalHemorrhaging);

    ArrayList<Mutation> sprereqs21 = new ArrayList<Mutation>();
    sprereqs21.add(Diarrhea);
    sprereqs21.add(Insanity);
    Dysentery = new Mutation("Dysentery (Tier 4)", 19, 8, 15, 8, sprereqs21, "sMutation", false);
    allSMutations.add(Dysentery);

    ArrayList<Mutation> sprereqs22 = new ArrayList<Mutation>();
    sprereqs22.add(PulmonaryFibrosis);
    sprereqs22.add(ImmuneSuppression);
    sprereqs22.add(Coma);
    TotalOrganFailure = new Mutation("Total Organ Failure (Tier 4)", 28, 0, 20, 25, sprereqs22, "sMutation", false);
    allSMutations.add(TotalOrganFailure);

    ArrayList<Mutation> sprereqs23 = new ArrayList<Mutation>();
    sprereqs23.add(SkinLesions);
    sprereqs23.add(HemorrhagicShock);
    Necrosis = new Mutation("Necrosis (Tier 4)", 27, 10, 20, 13, sprereqs23, "sMutation", false);
    allSMutations.add(Necrosis);

    ArrayList<Mutation> sprereqs24 = new ArrayList<Mutation>();
    sprereqs24.add(Seizures);
    sprereqs24.add(Dysentery);
    Insanity = new Mutation("Insanity (Tier 4)", 18, 6, 15, 0, sprereqs24, "sMutation", false);
    allSMutations.add(Insanity);

    ArrayList<Mutation> sprereqs25 = new ArrayList<Mutation>();
    sprereqs25.add(Paralysis);
    sprereqs25.add(SystemicInfection);
    sprereqs25.add(TotalOrganFailure);
    Coma = new Mutation("Coma (Tier 4)", 21, 0, 15, 2, sprereqs25, "sMutation", false);
    allSMutations.add(Coma);

    ArrayList<Mutation> sprereqs26 = new ArrayList<Mutation>();
    sprereqs26.add(InternalHemorrhaging);
    sprereqs26.add(Necrosis);
    HemorrhagicShock = new Mutation("Hemorrhagic Shock (Tier 4)", 23, 0, 15, 15, sprereqs26, "sMutation", false);
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
    return arr.contains(mut);
  }

  // arr1 has to be smaller than arr2
  boolean arrIn(ArrayList<Mutation> arr1, ArrayList<Mutation> arr2) {
    boolean allInArr2 = true;
    if (arr1.size()>arr2.size()) {
      return false;
    }
    for (int i=0; i<arr1.size(); i++) {
      allInArr2 = allInArr2 && arr2.contains(arr1.get(i));
    }
    return allInArr2;
  }

  boolean arrSIn(ArrayList<Mutation> arr1, ArrayList<Mutation> arr2) {
    boolean inArr2 = false;
    if (arr2.size() == 0) {
      return false;
    }
    for (int i=0; i<arr1.size(); i++) {
      inArr2 = inArr2 || arr2.contains(arr1.get(i));
    }
    return inArr2;
  }

  void updateAccessibleMutations() {
    for (int i=0; i<tMutations.size(); i++) {
      if (in(tMutations.get(i), accessibleTMutations)) {
        accessibleTMutations.remove(tMutations.get(i));
      }
    }
    for (int i=0; i<sMutations.size(); i++) {
      if (in(sMutations.get(i), accessibleSMutations)) {
        accessibleSMutations.remove(sMutations.get(i));
      }
    }
  }

  void addRandomMutation() {
    Mutation mut;
    if (Math.random() < 0.5) {
      if (accessibleTMutations.size() == 0) {
        return;
      }
      int index = (int) (Math.random() * accessibleTMutations.size());
      mut = accessibleTMutations.get(index);
      addTMutation(mut);
      refreshDropDownList("<Transmission>");
    } else {
      if (accessibleSMutations.size() == 0) {
        return;
      }
      int index = (int) (Math.random() * accessibleSMutations.size());
      mut = accessibleSMutations.get(index);
      addSMutation(mut);
      refreshDropDownList("<Symptoms>");
    }
    news.add(mut.name + " mutated.");
    noStroke();
    fill(205);
    rect(1220, 215, 160, 100);
    fill(0, 0, 0);
    text(news.get(news.size() - 1), 1220, 220, 150, 100);
    dSell.addItem(mut.name, 0);
    refreshDropDownList("<Current Mutations>");
  }

  boolean addTMutation(Mutation m) {
    if (points < m.cost) {
      return false;
    }
    points -= m.cost;
    accessibleTMutations.remove(m);
    tMutations.add(m);
    acquiredMutations.add(0, m);
    m.bought = true;
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
    m.bought = true;
    points -= m.cost;
    infectivity += m.infIncrement / 10000.0;
    severity += m.sevIncrement / 10000.0;
    lethality += m.letIncrement / 10000.0;
    //for (int i=0; i<allSMutations.size(); i++) {
    //  Mutation mut = allSMutations.get(i);
      //if prereqs are met and mutation is not already in the dropdownlist
      println("arrSIn: "+ arrSIn(m.prereqs, sMutations));
      println("!in(mut, accSMuts): "+!(in(m, accessibleSMutations)));
      println("!(in(mut, sMutations)): "+!(in(m, sMutations)));
      if (arrSIn(m.prereqs, sMutations) && !(in(m, accessibleSMutations)) && !(in(m, sMutations))) {
        accessibleSMutations.add(m);
      }
   // }
    return true;
  }

  boolean addAMutation(Mutation m) {
    if (points < m.cost) {
      return false;
    }
    accessibleAMutations.remove(m);
    aMutations.add(m);
    m.bought = true;
    return true;
  }

  boolean sell(Mutation mut) {
    String accMutName;
    Mutation accMut;
    //checks if the post-reqs of the mutation the player is trying
    //to sell is in acquired mutations. If so, then don't
    //allow player to sell the mutation (this is how it works in-game too)
    print(" "+checkIfCanSell(mut));
    for (int i = 0; i < acquiredMutations.size(); i++) {
      if (acquiredMutations.get(i).prereqs().contains(mut)) {
        return false;
      }
    }

    if (acquiredMutations.size() != 0) {
      infectivity -= mut.infIncrement() / 10000.0;
      severity -= mut.sevIncrement() / 10000.0;
      lethality -= mut.letIncrement() / 10000.0;
    }
    acquiredMutations.remove(mut);
    mut.bought = false;
    points+= mut.cost();

    //re-adds mutation into the proper place (below previous tier levels) in the 
    //accessible mutation ArrayLists
    if (mut.type.equals("tMutation")) {
      //removes post-reqs when selling the mutation
      for (int i = 0; i < accessibleTMutations.size(); i++) {
        accMut = accessibleTMutations.get(i);
        if (accMut.prereqs().contains(mut)) {
          accessibleTMutations.remove(accMut);
          tMutations.remove(mut);
          i--;
        }
      }
      //puts sold mutation in right place in the Accessible dropdownlist
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
        if (accMut.prereqs().contains(mut)) {
          accessibleSMutations.remove(accMut);
          sMutations.remove(mut);
          i--; //so that indexing re-calibrates itself after removing an element from list
        }
      }
      //puts sold mutation in right place in the Accessible dropdownlist
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

  boolean checkIfCanSell(Mutation mut) {
    int numPrereqsBought = 0;
    //finds out how many prereqs are bought
    for (int i = 0; i < mut.prereqs().size(); i++) {
      Mutation prereq = mut.prereqs().get(i);
      if (!prereq.equals(mut)) {
        println("prereq: "+prereq);
        if (prereq.bought) {
          numPrereqsBought++;
          Mutation prereqOfPrereq = null;
          //checks if the "tree" of each prereq originated from a base mutation
          for (int j = 0; j < prereq.prereqs().size(); j++) {
            prereqOfPrereq = prereq.prereqs().get(j);
            if (!prereqOfPrereq.equals(mut)) {
              hasTreeAsBase(mut, prereq, prereqOfPrereq);
            }
          }
        }
      }
    }
    //println(mut.name+ ": " +numPrereqsBought);
    return true;
  }

  boolean hasTreeAsBase(Mutation original, Mutation upperTree, Mutation lowerTree) {
    //finds prereqs of lowerTree
    for (int i = 0; i < lowerTree.prereqs().size(); i++) {
      Mutation prereqOfLowerTree = lowerTree.prereqs().get(i);
      if (!prereqOfLowerTree.equals(upperTree)) {
        if (prereqOfLowerTree.bought) {
          hasTreeAsBase(original, lowerTree, prereqOfLowerTree);
          println("original: "+original.name+", prereq: "+upperTree.name+", prereqOfTryToSell: "+lowerTree.name);
        }
      }
    }
    return true;
  }
}
