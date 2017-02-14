class Ball{
  
  //global
  
  float x,y;
  float radius;
  float speedY = 5;
  float speedX = 3;
  int R,G,B;
  
  //construction
  
  Ball(float _x, float _y, float _radius){
  //int _R, int _G, int _B){
    x = _x;
    y = _y;
   // R = _R;
   // G = _G;
   // B = _B;
   radius = _radius;
    
    
  }
  
  //function
  
  void display(){
    noStroke();
    ellipse (x,y,radius,radius);
  }
  
  void move(){
    
    x = x+ speedX;
    y = y+ speedY;
  }
  
  void bounce(){
    if (x > width || x< 0) {
      speedX = speedX * -1;
    }
    
    if (y > height || y< 0){
      speedY = speedY * -1;
    }
  }
  void colorChange(float R,float G,float B){
    fill(R, G, B);
  }
}