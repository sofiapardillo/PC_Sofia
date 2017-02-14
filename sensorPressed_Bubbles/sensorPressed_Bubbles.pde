import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val;
float x;
float y;
int i;
Ball myBall;
Ball myBall2;

Ball[] bubbles = new Ball[30];

//variable to set # of objects
int total = 0;

void setup(){
  
  size(400,400);
  smooth();
  
printArray(Serial.list()); // this line prints the port list to the console
String portName = Serial.list()[1]; //change the number in the [] for the port you need
myPort = new Serial(this, portName, 9600);
  
  for (int i=0; i<30; i++) {
   
    bubbles[i] = new Ball(i+random(0,400),i+random(0,400), i+random(10,50));
 
  } 
}

void draw(){
  
  background(255);
  if ( myPort.available() > 0) { // If data is available,
val = myPort.read(); // read it and store it in val
}

if (val < 100){
   total= total+1;
}
  
  for(int i=0; i<total && i<30; i++) {
  
  bubbles[i].display();
  bubbles[i].move();
  bubbles[i].bounce();
  bubbles[i].colorChange(random(0,255), random(0,255), random(0,255));
  }
  
  //myBall.display();
  //myBall.move();
  //myBall.bounce();
  //myBall.colorChange(255,0,mouseX);

  //myBall2.display();
  //myBall2.move();
 // myBall2.bounce();
  //myBall2.colorChange(mouseY,230,0);

}