//AB modification. Accel sends 3 values to serial

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_LSM9DS1.h>
#include <Adafruit_Sensor.h>

Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1();

#define LSM9DS1_SCK A5
#define LSM9DS1_MISO 12
#define LSM9DS1_MOSI A4
#define LSM9DS1_XGCS 6
#define LSM9DS1_MCS 5

int accelerometer = 0;    // first analog sensor
int magno = 0;   // second analog sensor
int gyro = 0;    // digital sensor
int inByte = 0;         // incoming serial byte

int a1value;
int a2value;
int a3value;

void setupSensor()
{
  //accel
  lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_2G);
  //magno
  lsm.setupMag(lsm.LSM9DS1_MAGGAIN_4GAUSS);
  //gyro
  lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_245DPS);
}

void setup() {
  // start serial port at 115200 bps:
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  
  if (!lsm.begin()) {
    while (1);
  }

  setupSensor();
  establishContact();  // send a byte to establish contact until receiver responds
}

void loop() {

  lsm.read();
  sensors_event_t a, m, g, temp;
  lsm.getEvent(&a, &m, &g, &temp);

  // if we get a valid byte, read analog ins:

  if (Serial.available() > 0) {
    // get incoming byte:
    inByte = Serial.read();
  }

  a1value = int (a.acceleration.x);

  a2value = int (a.acceleration.y);

  a3value = int (a.acceleration.z);
  /*
    // print sensor values:
    Serial.print(accelerometer);
    Serial.print(",");
    Serial.print(magno);
    Serial.print(",");
    Serial.println(gyro);
  */


  // write sensor values:
  Serial.write(a1value);
  Serial.write(a2value);
  Serial.write(a3value);

  delay(200);




}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.print('A');   // send a capital A
    delay(300);
  }
}
