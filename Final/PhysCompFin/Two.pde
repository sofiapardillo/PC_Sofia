class Second{
  
  PImage picture6;
  PImage picture7;
  float speedX = 1;
  float speedY = 1;
  float speedX1 = 2;
  float speedY1 = 2;
  float a,b,c,d;
  Second(float _a, float _b,float _c, float _d) {
    a = _a;
    b = _b;
    c = _c;
    d = _d;
     picture6 = loadImage("BklynApt.jpg");
     picture7 = loadImage("Bklyn1.jpg");
  }
  
   void display() {
   
    image(picture6,a,b,150,225);
    image(picture7,c,d,425,250);
   
    imageMode(CENTER);

 }

void move1() {
       if ((a>width+150) || (a<0)) {
    speedX = speedX*-1;
  }
  
  if ((b>height+150) || (b<-100)) {
    speedY = speedY*-1;
    }
    
  a = a + speedX;
  b = b + speedY;
 }
 void move2() {
   
   tint(255, 127);
       if ((c>width +100) || (c<-200)) {
    speedX1 = speedX1*-1;
  }
  
 /* if ((d>height) || (d<-100)) {
    speedY1 = speedY1*-1;
    }
    */
  c = c + speedX1;
  //d = d + speedY1;
 }

}