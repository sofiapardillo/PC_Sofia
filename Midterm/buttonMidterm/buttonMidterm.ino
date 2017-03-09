const int buttonPin1 = 1;
const int buttonPin2 = 2;
const int buttonPin3 = 3;
const int buttonPin4 = 4;
const int buttonPin5 = 5;
const int buttonPin6 = 6;
const int buttonPin7 = 7;
const int buttonPin8 = 8;
const int buttonPin9 = 9;
const int buttonPin10 = 10;


int zeroVal;
int firstVal;
int secondVal;
int thirdVal;
int fourthVal;
int fifthVal;
int sixthVal;
int seventhVal;
int eighthVal;
int ninthVal;


void setup() {
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin2, INPUT);
  pinMode(buttonPin3, INPUT);
  pinMode(buttonPin4, INPUT);
  pinMode(buttonPin5, INPUT);
  pinMode(buttonPin6, INPUT);
  pinMode(buttonPin7, INPUT);
  pinMode(buttonPin8, INPUT);
  pinMode(buttonPin9, INPUT);
  pinMode(buttonPin10, INPUT);

  Serial.begin(9600);
}

void loop() {
zeroVal = (digitalRead(buttonPin1));
firstVal = (digitalRead(buttonPin2));
secondVal = (digitalRead(buttonPin3));
thirdVal = (digitalRead(buttonPin4));
fourthVal = (digitalRead(buttonPin5));
fifthVal = (digitalRead(buttonPin6));
sixthVal = (digitalRead(buttonPin7));
seventhVal = (digitalRead(buttonPin8));
eighthVal = (digitalRead(buttonPin9));
ninthVal = (digitalRead(buttonPin10));

 Serial.print(zeroVal);
 Serial.print(",");
 Serial.print(firstVal);
 Serial.print(",");
 Serial.print(secondVal);
 Serial.print(",");
 Serial.print(thirdVal);
 Serial.print(",");
 Serial.print(fourthVal);
  Serial.print(",");
 Serial.print(fifthVal);
 Serial.print(",");
 Serial.print(sixthVal);
 Serial.print(",");
 Serial.print(seventhVal);
 Serial.print(",");
 Serial.print(eighthVal);
 Serial.print(",");
 Serial.println(ninthVal);

}
