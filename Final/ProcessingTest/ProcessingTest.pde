import processing.serial.*;

Serial myPort;

 void setup(){
  
  //String portName = Serial.list()[0];
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n');
  size(500,500);
  smooth();
  
 }
 
 void draw(){
   
 }