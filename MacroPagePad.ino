
//Arduino pro micro code for MacroPagePad
//modify readKp4x4() to change keypad functions
//modify check_encoder(void) if you want the encoder to peerform other functions. Defaults to changing volume and muting when pressed




//make sure these libraries are installed in the arduino IDE using either the built-in library manager or downloading from github

//Libraries
#include <Keypad.h>         //https://github.com/Chris--A/Keypad
#include <ClickEncoder.h>   //https://github.com/BennehBoy/clickEncoder
#include <TimerOne.h>       //https://github.com/PaulStoffregen/TimerOne
#include <HID-Project.h>    //https://github.com/NicoHood/HID


//Constants
#define ROWS 4
#define COLS 4

#define page_0_led_pin 15
#define page_1_led_pin 14
#define page_2_led_pin 16
#define page_3_led_pin 10



//Parameters
const char kp4x4Keys[ROWS][COLS]  = {{'1', '2', '3', 'A'}, {'4', '5', '6', 'B'}, {'7', '8', '9', 'C'}, {'*', '0', '#', 'D'}};
byte rowKp4x4Pin [4] = {2, 3, 4, 5};
byte colKp4x4Pin [4] = {6, 7, 8, 9};

int page_select = 0;

template<typename T>
struct TimeStampedValue 
{
  explicit TimeStampedValue(T value) : _value(value), _timeStamp(0) {}
  void set(const T& value) { _value = value; touch(); }
  operator const T&() const { return _value; }
  void touch() { _timeStamp = millis(); }
  unsigned long getTimeStamp() const { return _timeStamp; }

  private:
  T _value;
  unsigned long _timeStamp;
};


ClickEncoder encoder(A0, A1, A2, 4);
TimeStampedValue<int16_t> value(0);
int16_t current = 0;





//Variables
Keypad kp4x4  = Keypad(makeKeymap(kp4x4Keys), rowKp4x4Pin, colKp4x4Pin, ROWS, COLS);



void setup() 
{

  pinMode(page_0_led_pin, OUTPUT);
  pinMode(page_1_led_pin, OUTPUT);
  pinMode(page_2_led_pin, OUTPUT);
  pinMode(page_3_led_pin, OUTPUT);

  Timer1.initialize(1000);
  Timer1.attachInterrupt(timerIsr);

  Consumer.begin();
  Keyboard.begin();


  
  //Init Serial USB
  
  Serial.begin(9600);
  Serial.println(F("Initialize System"));

  init_led();
  
}


void loop() 
{
  
  check_encoder();
  
  readKp4x4();

  check_led();
}





void readKp4x4() 
{ /* function readKp4x4 */
  //// Read button states from keypad
  char customKey = kp4x4.getKey();


// following switch statement is used to assign button presses to functions

// if using multiple pages, see case '6' for example on cascading switch statements using page_select variable

   
 switch (customKey)
 {
  case '1':
    Consumer.write(MEDIA_STOP);      
    break;

  case '2':
    Consumer.write(MEDIA_PREVIOUS);      
    break;

  case '3':
    Consumer.write(MEDIA_NEXT);      
    break;

  case 'A':
    Consumer.write(MEDIA_PLAY_PAUSE);      
    break;

  case '4':
    if(page_select == 1)
    {
      Consumer.write(HID_CONSUMER_AL_CALCULATOR);      
    }
    else
      Keyboard.print("Test");
    break;

  case '5':
    Keyboard.press(KEY_LEFT_GUI);
    Keyboard.press(KEY_LEFT_SHIFT);
    Keyboard.press('s');
    Keyboard.releaseAll();  
    break;

  case '6':
    switch (page_select)
    {
      case '0':
      
      // insert function for page 0 for button number 6
      
      break;

      case '1':
      
      // insert function for page 1 for button number 6

      break;

      case '2':
      
      // insert function for page 2 for button number 6

      break;
      
      case '3':
      
      // insert function for page 3 for button number 6

      break;
      
    }
 
    break;

  case 'B':
    Keyboard.write(KEY_F13);
    break;

  case '7':
    Keyboard.write(KEY_F14);
    break;


  case '8':
 
    break;

    
  case '9':
 
    break;
  
  case 'C':
 
    break;
    
 
    
  case '*':
    Keyboard.press(KEY_LEFT_GUI);
    Keyboard.press('l');
    Keyboard.releaseAll();      
    break;

    
  case '0':
 
    break;
    
  case '#':
 
    break;

  case 'D':
    page_select ++;
    if (page_select >= 4)
    page_select = 0;
    
    break;

 }
  
}



//read value from encoder and determine if change is positive or negative

void check_encoder(void)
{
  current += encoder.getValue();
  auto diff = current - value;

  
  if (diff != 0) {


    if (diff > 0) {
     
      volumeChange(MEDIA_VOL_UP);      
    } 
    else {
    
      volumeChange(MEDIA_VOL_DOWN);              
    }
  
    value.set(current);
  }

  ClickEncoder::Button b = encoder.getButton();
  if (b != ClickEncoder::Open) {
    Serial.println("Button");
    switch (b) {
      case ClickEncoder::Clicked:
       
        volumeChange(MEDIA_VOL_MUTE);              
        value.touch();
        break;
    }
  }
  else {
    
    }
}

void check_led()
{
  switch (page_select)
  {
  case 0:
  
    digitalWrite(page_0_led_pin, HIGH);
    digitalWrite(page_1_led_pin, LOW);
    digitalWrite(page_2_led_pin, LOW);
    digitalWrite(page_3_led_pin, LOW);
    break;

   case 1:
  
    digitalWrite(page_0_led_pin, LOW);
    digitalWrite(page_1_led_pin, HIGH);
    digitalWrite(page_2_led_pin, LOW);
    digitalWrite(page_3_led_pin, LOW);
    break;

    case 2:
  
    digitalWrite(page_0_led_pin, LOW);
    digitalWrite(page_1_led_pin, LOW);
    digitalWrite(page_2_led_pin, HIGH);
    digitalWrite(page_3_led_pin, LOW);
    break;

    case 3:
  
    digitalWrite(page_0_led_pin, LOW);
    digitalWrite(page_1_led_pin, LOW);
    digitalWrite(page_2_led_pin, LOW);
    digitalWrite(page_3_led_pin, HIGH);
    break;
  }
  
  
}

void timerIsr() 
{
  encoder.service();
}


void volumeChange(uint16_t key) 
{
  Consumer.write(key);
}


void init_led()
{

  float d_time = 100;
  int counter = 1;
  
  while (d_time > 1)
  {
      digitalWrite(page_0_led_pin, HIGH);
      delay(d_time);
      digitalWrite(page_0_led_pin, LOW);
      delay(d_time);
      digitalWrite(page_1_led_pin, HIGH);
      delay(d_time);
      digitalWrite(page_1_led_pin, LOW);
      delay(d_time);
      digitalWrite(page_2_led_pin, HIGH);
      delay(d_time);
      digitalWrite(page_2_led_pin, LOW);
      delay(d_time);
      digitalWrite(page_3_led_pin, HIGH);
      delay(d_time);
      digitalWrite(page_3_led_pin, LOW);
      delay(d_time);
  
     // d_time = d_time * ((cos(counter * 3.1415/100)+1)/(2));
      d_time = d_time *( - sin(3.1415 * counter /(2*50)) + 1);
      counter++;
  }

      digitalWrite(page_0_led_pin, HIGH);
      digitalWrite(page_1_led_pin, HIGH);
      digitalWrite(page_2_led_pin, HIGH);
      digitalWrite(page_3_led_pin, HIGH);
      delay(2000);
      digitalWrite(page_0_led_pin, LOW);
      digitalWrite(page_1_led_pin, LOW);
      digitalWrite(page_2_led_pin, LOW);
      digitalWrite(page_3_led_pin, LOW);
}
