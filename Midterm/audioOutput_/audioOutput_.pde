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

Serial myPort;
int[] values = new int[3]; 
//int serialCount = 0;   

void setup(){
  size(640,360);
  //final String filePath = dataPath("sound_voices.wav");
  /*minim*/
  minim = new Minim(this);
  
    
  sound1=minim.loadFile("union.mp3", 640);
  sound1.loop();
  sound2=minim.loadFile("house.mp3");
  sound2.loop();
  sound3=minim.loadFile("subwayperformers.mp3");
  sound3.loop();
  /* sound4=minim.loadFile("Campground.mp3");
  sound4.loop();
  sound5=minim.loadFile("Cricket.mp3");
  sound5.loop();
*/
  //println(Serial.list());
  
  //String portName = Serial.list()[1];
 myPort = new Serial(this, Serial.list()[1], 9600);
 myPort.bufferUntil('\n');
}


void draw(){
   //int bufSize=sound1.bufferSize();
 
  
  //println(secondVal);
  //NADA
  if (secondVal == 0){
   sound1=minim.loadFile("union.mp3");
   sound1.play();
}
  else { 
    sound2=minim.loadFile("house.mp3");
      sound2.loop();
  }
  
    if (thirdVal == 0){
 sound3.loop();
}
  else {
    //sound4=minim.loadFile("Campground.mp3");
//sound4.loop();
  }
  
    if (fifthVal == 0){
  // sound5.loop();
}
  else {
    noTint();
  } 
   if (sixthVal == 0){
   tint(random(255),random(255),random(255));
}
  else {
    noTint();
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