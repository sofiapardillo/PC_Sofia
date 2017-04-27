import processing.serial.*;

String serial;
Serial myPort;


 void setup(){
  
  //String portName = Serial.list()[0];
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n');
  size(500,500);
  smooth();
  
 }
 
 void draw(){
   
   while(myPort.available() > 0){
     serial = myPort.readStringUntil('\n');
   }
 if (serial !=null){
   String[] a =split(serial, ',');
   println(a[0]);
   println(a[1]);
   println(a[2]);
   
 }
 }