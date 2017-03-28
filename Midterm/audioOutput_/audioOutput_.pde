import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.serial.*;


float zeroVal;
float firstVal;
float secondVal;
float thirdVal;
float fourthVal;
float fifthVal;
float sixthVal;
float seventhVal;
float eighthVal;
float ninthVal;


/*minim*/
Minim minim;
AudioPlayer sound1;
AudioPlayer sound2;
AudioPlayer sound3;
AudioPlayer sound4;
AudioPlayer sound5;
AudioPlayer sound6;

Serial myPort;
int[] values = new int[3]; 
//int serialCount = 0;   

void setup(){
  size(640,360);
  //final String filePath = dataPath("sound_voices.wav");
  /*minim*/
  minim = new Minim(this);
  
    
  sound1=minim.loadFile("union.wav");
  //sound1.loop();
  sound2=minim.loadFile("house.wav");
  //sound2.loop();
  sound3=minim.loadFile("subwayperformers.wav");
  //sound3.loop();
  sound4=minim.loadFile("nightwaves.wav");
  //sound4.loop();
  sound5=minim.loadFile("noname.wav");
  //sound5.loop();
  sound6=minim.loadFile("cricket.wav");

  //println(Serial.list());
  
  //String portName = Serial.list()[1];
 myPort = new Serial(this, Serial.list()[1], 9600);
 myPort.bufferUntil('\n');
}


void draw(){
   //int bufSize=sound1.bufferSize();
 
  
  //println(secondVal);
  //NADA
  
  if (secondVal == 1){
   sound3.play();
}
  else { 
      sound4.play();
  }
  
    if (thirdVal == 1){
    sound1.pause(); 
  }
  
    if (fourthVal == 1){
   sound2.loop();
 sound2.rewind();
}

 if (fifthVal == 1){
   sound5.play();
}
  
   if (sixthVal == 1){
   sound6.play();
}
 
  if (seventhVal == 1){
   sound5.play();
}
  else {
   sound5.pause(); 
  }
 
}

void serialEvent(Serial myPort) {
   String inString = myPort.readStringUntil('\n');
    if (inString != null) {
    inString = trim(inString);
    float[] values = float(split(inString, ","));
   
   if (values.length >= 10){
     zeroVal= values[0];
     firstVal = values[1];
     secondVal = values[2];
     thirdVal= values[3];
     fourthVal = values[4];
     fifthVal = values[5];
     sixthVal= values[6];
     seventhVal = values[7];
     eighthVal = values[8];
     ninthVal = values[9];
     
     
   }
    }}