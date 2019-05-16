public class Logistic{
  public static void main(String[] args){
    double rate = 0;
    double y = 1;
    double infectivity = 0.05;
    for (double t=0; t<100; t++){
      rate = infectivity * ((1000000-y) / 1000000) * y;
      y += rate;
      System.out.println("("+t+","+y+")");
    }
  }
}
