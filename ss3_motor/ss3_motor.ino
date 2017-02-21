#include <Servo.h>

Servo myServo;

void setup() {
   Serial.begin(9600);
   myServo.attach(9);
}

void loop() {

int val = analogRead(A0);
val = map(val, 0, 1024, 0, 180);
myServo.write(val);
delay(200);

}
