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
  
  Disease(){
    infectivity = 0.1;
    severity = 0;
    lethality = 0;
  }
}
