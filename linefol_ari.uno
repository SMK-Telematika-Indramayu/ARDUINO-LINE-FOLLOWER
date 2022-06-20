// SCRIPT ARDUINO LINE FOLLOWER
// By: Ari Farhan
// SMK Telematika Indramayu
// 2022

const int SIN1 = 5;
const int SIN2 = 6;
const int SIN3 = 7;
const int SIN4 = 8;
const int SKK = 9;
const int SKKK = 10;
const int SKK1 = A0;
const int SKKK2 = A1;



void setup() {
  Serial.begin (9600);
  pinMode (SIN1, OUTPUT);
  pinMode (SIN2, OUTPUT);
  pinMode (SIN3, OUTPUT);
  pinMode (SIN4, OUTPUT);
  pinMode (SKK, INPUT);
  pinMode (SKKK, INPUT);
  pinMode (SKK1, OUTPUT);
  pinMode (SKKK2, OUTPUT);
}

void loop() {
 int da1 = digitalRead (SKK);
int da2 = digitalRead (SKKK);
Serial.print ("Sensor 1 : ");
Serial.print (da1);
Serial.print ("\n");
Serial.print (" Sensor 2 : ");
Serial.print (da2);
Serial.print ("\n");


if((da1 == 1) && (da2 == 1)){
    digitalWrite(SIN1, HIGH);
  digitalWrite(SIN3, HIGH);
  digitalWrite(SIN2, LOW); 
  digitalWrite(SIN4, LOW);
  analogWrite(SKK1, 255);
  analogWrite(SKKK2, 255);
}else if((da1 == 1) && (da2 ==  0)){
  //KIRI
    digitalWrite(SIN2, LOW);
  digitalWrite(SIN3, HIGH);
  digitalWrite(SIN1, HIGH);
  digitalWrite(SIN4, HIGH);
}
else if((da1 == 0) && (da2 ==  1)){
  //KANAN
  digitalWrite(SIN2, LOW);
  digitalWrite(SIN3, HIGH);
  digitalWrite(SIN1, LOW);
  digitalWrite(SIN4, LOW);
}

}
