int YELLOW = 11; 
int GREEN = 9; 
int RED = 6; 
int BLUE = 3; 

const int BUTTON = 7; 
int val = 0;

void setup() {
pinMode(YELLOW, OUTPUT); 

pinMode(GREEN, OUTPUT); 

pinMode(RED, OUTPUT); 

pinMode(BLUE, OUTPUT); 
}



void loop(){
val = digitalRead(BUTTON); 

if (val == LOW) {
digitalWrite(YELLOW, HIGH); 
delay(80);   
digitalWrite(YELLOW, LOW);
delay(80);
}
else{ digitalWrite(YELLOW, HIGH);
delay(300);
digitalWrite(YELLOW, LOW);
delay(400);
digitalWrite(YELLOW, HIGH);
delay(300);
digitalWrite(YELLOW, LOW);
delay(400);
} 

if (val == HIGH) {
digitalWrite(GREEN, HIGH); 
delay(120);
digitalWrite(GREEN, LOW); 
delay(120);
}
else{ digitalWrite(GREEN, LOW);
delay(120);
digitalWrite(GREEN, HIGH); 
delay(120);
} 

if (val == HIGH) {
digitalWrite(RED, HIGH); 
delay(500);
digitalWrite(RED, HIGH); 
delay(500);
digitalWrite(RED, LOW); 
delay(500);

}
else{ digitalWrite(RED, HIGH);
delay (80);
digitalWrite(RED, HIGH);
delay (120);
digitalWrite(RED, LOW);
delay (120);
} 

if (val == HIGH) {
digitalWrite(BLUE, HIGH); 
delay(130);
digitalWrite(BLUE, LOW);
delay(80);
}
else{ digitalWrite(BLUE, HIGH);
//delay(800);
//digitalWrite(BLUE, LOW);
//delay(80);
} 

}
