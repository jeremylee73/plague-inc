class Mutation{
  String name;
  int cost;
  int infIncrement;
  int sevIncrement;
  int letIncrement;
  ArrayList<String> prereqs;
  String type;
  
  Mutation(String name, int cost, int infIncrement, int sevIncrement, int letIncrement, ArrayList<String> prereqs, String typeOfMutation){
    this.name = name;
    this.cost = cost;
    this.infIncrement = infIncrement;
    this.sevIncrement = sevIncrement;
    this.letIncrement = letIncrement;
    this.prereqs = prereqs;
    //type refers to whether this mutation is a "tMutation", a "sMutation", or a "aMutation"
    type = typeOfMutation;
  }
  
  String name(){
    return name;
  }
  
  int cost(){
    return cost;
  }
  
  int infIncrement(){
    return infIncrement;
  }
  
  int sevIncrement(){
    return sevIncrement;
  }
  
  int letIncrement(){
    return letIncrement;
  }
}
