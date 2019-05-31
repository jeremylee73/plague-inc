class Plane{
  float angle;
  City from;
  City to;
  boolean isDiseased;
  float x;
  float y;
  PImage planeImg;
  float newX;
  float newY;
  float countx;
  float county;
  
  Plane(float x, float y, City from, City to, boolean isDiseased){
    this.from = from;
    this.to = to;
    this.x = x;
    this.y = y;
    newX = x;
    newY = y;
    countx = x;
    county = y;
    this.isDiseased = isDiseased;
    if (!isDiseased){
      planeImg = from.planeImg1;
    } else {
      planeImg = from.planeImg2;
    }
    setAngle();
    pushMatrix();
    rotate(angle);
    popMatrix();
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
    pushMatrix();
    countx += (to.x - from.x)/100;
    county += (to.y - from.y)/100;
    image(planeImg, countx, county, 50, 50);
    popMatrix();
  }
}
