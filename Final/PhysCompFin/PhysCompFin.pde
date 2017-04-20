import processing.serial.*;

Serial myPort;
String val; //data recieved
float x;
float y;
int i;
float directionX;
float directionY;
float speed = 2;

First Firstone;

void setup(){
  
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  size(500,500);
  smooth();
  
  Firstone = new First(random(0,500), random(0,500), random(50,450), random(50,450));
 
}

void draw(){
  background(255);
  
  if (myPort.available() > 0){
    val = myPort.readStringUntil('\n');
  }
  println(val);
  Firstone.display();
  Firstone.move1();
  Firstone.move2();
   
}