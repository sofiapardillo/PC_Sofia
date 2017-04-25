import processing.serial.*;

Serial myPort;
String val; //data recieved
float x;
float y;
int i;
float directionX;
float directionY;
float speed = 2;

float firstVal;
float secondVal;
float thirdVal;
int[] values = new int[3]; 

First Firstone;

void setup(){
  
  //String portName = Serial.list()[0];
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n');
  size(500,500);
  smooth();
  
  Firstone = new First(random(0,500), random(0,500), random(50,450), random(50,450));
 
}

void draw(){
  background(255);
  
  if (myPort.available() > -20){
    val = myPort.readStringUntil('\n');
  }
  println(val);
  Firstone.display();
  Firstone.move1();
  Firstone.move2();
   
}

void serialEvent(Serial myPort) {
   String inString = myPort.readStringUntil('\n');
    if (inString != null) {
    inString = trim(inString);
    float[] values = float(split(inString, ","));
   
   if (values.length >= 3){
     firstVal= values[0];
     secondVal = values[1];
     thirdVal = values[2];
   }
 }}