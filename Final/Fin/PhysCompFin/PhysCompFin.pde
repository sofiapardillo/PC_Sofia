import processing.serial.*;

Serial myPort;
String val; //data recieved
float x;
float y;
int i;
float directionX;
float directionY;
float speed = 2;

int firstVal;
int secondVal;
int thirdVal;
int[] values = new int[3]; 

First Firstone;

void setup(){
  
  //String portName = Serial.list()[0];
  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.bufferUntil('\n');
  size(500,500);
  smooth();
  
  Firstone = new First(random(0,500), random(0,500), random(50,450), random(50,450));
 
}

void draw(){
  background(255);
  
  println(firstVal);
  Firstone.display();
  Firstone.move1();
  Firstone.move2();
   
}

void serialEvent(Serial myPort) {
   String inString = myPort.readStringUntil('\n');
    if (inString != null) {
    inString = trim(inString);
    int[] values = int(split(inString, ","));
   
   if (values.length >= 3){
     firstVal= values[0];
     secondVal = values[1];
     thirdVal = values[2];
   }
 }}