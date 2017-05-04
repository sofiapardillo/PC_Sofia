//Sofia's
//AB mod from multisensor example at https://www.arduino.cc/en/Tutorial/SerialCallResponse 
// reads 3 values coming in from serial



import processing.serial.*;

Serial myPort;                       // The serial port
int[] serialInArray = new int[6];    // Where we'll put what we receive
int serialCount = 0;                 // A count of how many bytes we receive
int val1, val2, val3, val4, val5, val6;                  // Starting position of the ball
boolean firstContact = false;        // Whether we've heard from the microcontroller

PImage picture1;
PImage picture2;
PImage picture3;
PImage picture4;
PImage picture5;
PImage picture6;
PImage picture7;
PImage picture8;
PImage picture9;
PImage picture10;
PImage picture11;
PImage picture12;
PImage picture13;
PImage picture14;
PImage picture15;
PImage picture16;


float speedX = 1;
float speedY = 1;

int   FirstVal;

void setup() {
  
    size(850,750);
  smooth();
  

  println(Serial.list());
  
   picture1 = loadImage("AshTray.jpg");
   picture2 = loadImage("BargeMusic.jpg");
   picture3 = loadImage("beach.jpg");
   picture4 = loadImage("Beach1.jpg");
   picture5 = loadImage("bill.jpg");
   //picture6 = loadImage("Bklyn_KW.tiff");
   picture7 = loadImage("Bklyn1.jpg");
   picture8 = loadImage("BklynApt.jpg");
   picture9 = loadImage("hair.jpg");
   picture10 = loadImage("HRV1.jpg");
   picture11 = loadImage("lightin.jpg");
   picture12 = loadImage("trees1.jpg");
   picture13 = loadImage("polo.jpg");
   picture14 = loadImage("Street.jpg");
   picture15 = loadImage("sunset.jpg");
   picture16 = loadImage("trees.jpg");
   
  
  
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 115200);
}

void draw() {
   background(255);
   FirstVal = int(random(2,5));
   
      tint(255, val1);
      
      image(picture1,300,20,425,250);
      image(picture2,val2,60,150,225);
      image(picture3,200,200,425,250);
      
      
     tint(255, val2);
     
      image(picture4,70,400,425,250);
      image(picture5,val6,200,150,225);
      //image(picture6,350,500,150,225);
      image(picture7,10,val2,425,250);
      
     tint(255, val3);
     
      image(picture8,val1,260,150,225);
      image(picture9,300,val4,350,250);
      image(picture10,60,80,150,225);
      
    tint(255, val4);
      
      image(picture11,100,120,150,225);
      image(picture12,val3,15,150,225);
      image(picture13,20, val6,150,225);
     
      
     
    tint(255, val5);
     image(picture14,550,val1,425,250);
      image(picture15,val4,15,425,250);
      image(picture16,700,500,150,225);
      

  
}
  

void serialEvent(Serial myPort) {

  int inByte = myPort.read();

  if (firstContact == false) {
    if (inByte == 'A') {
      myPort.clear();          // clear the serial port buffer
      firstContact = true;     // you've had first contact from the microcontroller
      myPort.write('A');       // ask for more
    }
  }
  else {
    // Add the latest byte from the serial port to array:
    serialInArray[serialCount] = inByte;
    serialCount++;

    // If we have 3 bytes:
    if (serialCount > 5 ) {
      val1 = serialInArray[0];
      val2 = serialInArray[1];
      val3 = serialInArray[2];
      val4 = serialInArray[2];
      val5 = serialInArray[2];
      val6 = serialInArray[2];

      
      // Send a capital A to request new sensor readings:
      myPort.write('A');
      // Reset serialCount:
      serialCount = 0;
    }
  }
  
  println("firstContact" + firstContact);
  println("val1: " + val1);
   println("val2: " + val2);
    println("val3: " + val3);
    println("gVal1: " + val4);
    println("gVal2: " + val5);
    println("gVal3: " + val6);
   
} 
 void display(){   
   /* if(val1 < 255 && val1 > 200) {
      tint(val2, 125);
      float a = random(0,500);
      float b = random(0,500);
      
      image(picture1,a,b,150,225);
      image(picture1,random(50,450),random(50,450),150,225);
      
      if ((a>width+150) || (a<0)) {
    speedX = speedX*-1;
  }
  
  if ((b>height+150) || (b<-100)) {
    speedY = speedY*-1;
    }
    
  a = a + speedX;
  b = b + speedY;
    }
    
    if(val1 < 200 && val1 > 150) {
      tint(val2, 125);
      image(picture1,random(0,500),random(0,500),150,225);
    }
    
     if(val1 < 150 && val1 > 100) {
      tint(val2, 125);
      image(picture1,random(0,500),random(0,500),150,225);
    }
    
       if(val1 < 100 && val1 > 50) {
      tint(val2, 125);
      image(picture1,random(0,500),random(0,500),150,225);
    }
    
      if(val1 < 50 && val1 > 0) {
      tint(val2, 125);
      image(picture1,random(0,500),random(0,500),150,225);
    }
   */ 
    
}