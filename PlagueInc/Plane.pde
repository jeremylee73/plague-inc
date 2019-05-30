class Plane{
  float angle;
  City from;
  City to;
  boolean isDiseased;
  float x;
  float y;
  
  Plane(float x, float y, City from, City to, boolean isDiseased){
    if (!isDiseased){
      PImage planeImg = loadImage("healthyplane.png");
    } else {
      PImage planeImg = loadImage("infectedplane.png");
    }
  }
  
  void setAngle(){
    float dx = Math.abs(to.x - from.x);
    float dy = Math.abs(to.y - from.y);
    float theta = atan(dy / dx);
    angle = 0;
    if (to.x > from.x && to.y > from.y){
      angle = PI - theta;
    } else if (to.x > from.x && to.y < from.y){
      angle = (PI/2) - theta;  
    } else if (to.x < from.x && to.y > from.y){
      angle = PI + theta;  
    } else if (to.x < from.x && to.y < from.y){
      angle = (3*PI / 2) + theta;  
    }  
  }
  
  void send(){
      rotate(angle);
  }
}
