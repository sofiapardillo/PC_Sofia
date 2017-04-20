float x;
float y;
int i;
float directionX;
float directionY;
float speed = 2;

First Firstone;

void setup(){
   size(500,500);
  smooth();
  Firstone = new First(random(0,500), random(0,500), random(50,450), random(50,450));
 
}

void draw(){
  background(255);
  Firstone.display();
  Firstone.move1();
  Firstone.move2();
   
}