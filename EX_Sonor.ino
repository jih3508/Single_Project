#include <Ultrasonic.h>
#include <LiquidCrystal.h>

//핀설정
#define redPin  3
#define greenPin  4
#define bluePin  5
#define trig 6
#define echo 7
#define BUZ_PIN 2

LiquidCrystal lcd(8,9,10,11,12,13); //LCD핀설정(RS,E,D4,D5,D6,D7)
Ultrasonic ultra;

void setup() {
  Serial.begin(9600);
  
  lcd.begin(16, 2);  
  pinMode(trig, OUTPUT);  
  pinMode(echo, INPUT);  
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT); 
  pinMode(BUZ_PIN, OUTPUT);
  ultra.begin(trig, echo); 
}
void loop() 
{
 float distance;  
  
  digitalWrite(trig, LOW);
  digitalWrite(echo, LOW);
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(100);
  digitalWrite(trig, LOW);    // Trig 핀 High


   unsigned long duration = pulseIn(echo, HIGH);  
   distance = (float)duration / 58; // 거리 공식
   float nCMValue = ultra.ReadDistanceCentimeter(); 
   
   Serial.print("거리: ");
   Serial.print(distance); // 거리를 시리얼 모니터에 출력
   Serial.print("cm");
   Serial.print(" ----> ");
   Serial.print(nCMValue);
   Serial.println("cm");
   lcd.print("Distance: ");
   lcd.print(distance);
   lcd.print("cm");


   if (distance < 5 ){ //거리 5cm안에 들어 왔을때 LED 빨간색, 부저 울림
      setColor(0,0,250);
      tone(BUZ_PIN, 1000, 500);

   }
   else{
      setColor(0,250,0);
    }
   
   delay(1000);
   lcd.clear();
}

//RGB 색 설정 함수
void setColor(int red, int green, int blue)
{
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue); 

}
