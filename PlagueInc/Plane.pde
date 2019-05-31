class Plane{
  float angle;
  City from;
  City to;
  boolean isDiseased;
  float x;
  float y;
  PImage planeImg;
  
  Plane(float x, float y, City from, City to, boolean isDiseased){
    this.from = from;
    this.to = to;
    this.x = x;
    this.y = y;
    this.isDiseased = isDiseased;
    if (!isDiseased){
      planeImg = from.planeImg1;
    } else {
      planeImg = from.planeImg2;
    }
    setAngle();
    //rotate(angle);
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
    x += (to.x - from.x)/100;
    y += (to.y - from.y)/100;
    image(planeImg, x, y, 50, 50);
  }
}
