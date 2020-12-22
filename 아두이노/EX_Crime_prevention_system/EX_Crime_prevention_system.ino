//통신 관련 라이브러리
#include <SPI.h>  //SPI 통신
#include <Wire.h> //I2C

//OLED 관련 라이브러리 
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

// 온도 습도 라이브러리
#include <DHT.h>     // DHT library
#define DHTPIN 2 
#define DHTTYPE DHT11 

DHT dht(DHTPIN, DHTTYPE);

// 초음파 
#define trigPin 6
#define echoPin 7
#define minimumRange 30// 최소 거리

//블루투스
#include <SoftwareSerial.h>
#define RXD_PIN  8
#define TXD_PIN  9

SoftwareSerial BT(RXD_PIN, TXD_PIN); //pin 설정


// OLED 
#define OLED_RESET 4                  
Adafruit_SSD1306 display(OLED_RESET); //OLED 선언

// LED
#define LED_PIN 5

// 부저
#define buzzer 4

// 가속도
int CS = 10;
char POWER_CTL=0x2D;
char DATA_FORMAT=0x31;

char DATAX0=0x32;
char DATAX1=0x33;
char DATAY0=0x34;
char DATAY1=0x35;
char DATAZ0=0x36;
char DATAZ1=0x37;

unsigned char values[10]; // ADXL345 레지스터에서 읽은 값
int x,y,z;                // x, y 및 z 축 가속도계 값
int temp;


//OLED 비트맵 이미지 
static const unsigned char PROGMEM imgText[] ={
  0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xC0, 0x00, 0x00, 0x03, 0xC0, 0x00, 0x00, 0x06, 0x60, 0x00,
0x00, 0x06, 0x60, 0x00, 0x00, 0x0C, 0x30, 0x00, 0x00, 0x0C, 0x30, 0x00, 0x00, 0x18, 0x18, 0x00,
0x00, 0x10, 0x08, 0x00, 0x00, 0x30, 0x0C, 0x00, 0x00, 0x20, 0x04, 0x00, 0x00, 0x60, 0x06, 0x00,
0x00, 0x41, 0x82, 0x00, 0x00, 0xC1, 0x83, 0x00, 0x00, 0x81, 0x81, 0x00, 0x01, 0x81, 0x81, 0x80,
0x01, 0x01, 0x80, 0x80, 0x03, 0x01, 0x80, 0xC0, 0x02, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00, 0x60,
0x04, 0x00, 0x00, 0x20, 0x0C, 0x00, 0x00, 0x30, 0x08, 0x00, 0x00, 0x10, 0x18, 0x01, 0x80, 0x18,
0x10, 0x01, 0x80, 0x08, 0x30, 0x00, 0x00, 0x0C, 0x20, 0x00, 0x00, 0x04, 0x60, 0x00, 0x00, 0x06,
0x40, 0x00, 0x00, 0x02, 0x7F, 0xFF, 0xFF, 0xFE, 0x7F, 0xFF, 0xFF, 0xFE, 0x1F, 0xFF, 0xFF, 0xF8
};

void setup() {
  
  BT.begin(9600); //블루투스 통신 초기화
  
  SPI.begin();
  SPI.setDataMode(SPI_MODE3); // ADXL345에 대한 SPI 연결
  Serial.begin (9600);

  pinMode(CS,OUTPUT); //가속도 센서 핀 설정
  digitalWrite(CS,HIGH);

  writeRegister(DATA_FORMAT, 0x01);
  writeRegister(POWER_CTL,0x08); // 측정 모드
  
  pinMode(trigPin, OUTPUT); //초음파 센서 핀 설정
  pinMode(echoPin, INPUT);  //초음파 센서 핀 설정


  pinMode(LED_PIN, OUTPUT); //LED
  pinMode(buzzer, OUTPUT);  //부저
  
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C); //OLED 선언
  display.clearDisplay(); //화면 초기화

  //가속도 센서 초기화(문열때 변화하는 값을 비교하기 위해 존재)
  readRegister(DATAX0,6,values);
  z=((int)values[5]<<8)|(int)values[4];
  temp = z;
  
}

void loop() {

  //온습도센서
  int h = dht.readHumidity();     // 습도 값 구하기
  int t = dht.readTemperature();  // 온도 값 구하기

  //가속도 센서 관련 코드
  readRegister(DATAX0,6,values);
  x=((int)values[1]<<8)|(int)values[0];
  y=((int)values[3]<<8)|(int)values[2];
  z=((int)values[5]<<8)|(int)values[4];

  Serial.print(x,DEC); //debug
  Serial.print(',');  
  Serial.print(y,DEC);
  Serial.print(',');  
  Serial.println(z,DEC);
  
  //초음파 센서 값 관련 코드
  long duration, distance;
  
  digitalWrite(trigPin, LOW);  
  delayMicroseconds(2); 
  digitalWrite(trigPin, HIGH); 
  delayMicroseconds(10); 
  digitalWrite(trigPin, LOW); 
  
  duration = pulseIn(echoPin, HIGH); 
  distance = (duration/2) / 29.1; //초음파 값을 "CM"으로 변환 
  

  //초음파 센서 내의 물체가 감지 될 경우에 LED불과 부저가 동작 되도록 한다. 
  if(distance <= minimumRange)
  {
    
  //부저 & LED
  digitalWrite(LED_PIN, HIGH); // LED 점등
  tone(buzzer,300,100); //부저 울림, 주파수, 100 = 0.1초 

  //OLED 이미지 관련 코드 
  display.setTextSize(1); 
  display.setTextColor(WHITE);
  display.setCursor(0,0);
  display.drawBitmap(50,0,imgText,32,32,1); //이미지맵위치

  //블루투스 전달
  BT.write("O");
  
  }
  
  else
  {
    
   //OLED 화면 관련 코드 
  display.setTextColor(WHITE);
  display.setCursor(15,0);  //(폭, 높이)
  display.setTextSize(2);
  display.println("H: ");
   
  display.setCursor(60,0);  
  display.setTextSize(2);
  display.println(h);
  
  display.setCursor(90,5);
  display.setTextSize(1);
  display.println("%");

  display.setCursor(15,15);  
  display.setTextSize(2);
  display.println("T: ");
   
  display.setCursor(60,15);  
  display.setTextSize(2);
  display.println(t);
  
  display.setCursor(90,20);
  display.setTextSize(1);
  display.println("C");
  

  //부저 & LED
  digitalWrite(LED_PIN, LOW);
  noTone(buzzer);
  
  }
  
  display.display();
  delay(500);
  display.clearDisplay();
  
}

//가속도 센서관련 함수
void writeRegister(char registerAddress,char value)
{
  digitalWrite(CS,LOW);
  SPI.transfer(registerAddress);
  SPI.transfer(value);
  digitalWrite(CS,HIGH);
}

//가속도 센서관련 함수
void readRegister(char registerAddress,int numBytes,unsigned char * values)
{
  char address=0x80 | registerAddress;
  if(numBytes>1)address=address|0x40;
  digitalWrite(CS,LOW);
  SPI.transfer(address);
  for(int i=0;i<numBytes;i++){
    values[i]=SPI.transfer(0x00);
  }
  digitalWrite(CS,HIGH);
}
