/*RGB LED Input
  
  Created by Andrew L. Garza, November 25, 2011
  Released into the public domain.
  
  This code takes the hexadecimal or rgb color value and displays
  the appropriate color with a common anode RGB LED using PWM. 
  The rgbLED library can be altered to support common cathode RGB LEDs,
  just browse the comments throughout the library's code on how to do so.
  

  Pins 9, 10 and 11 are PWM pins on the Arduino Duemilanove
  The ground of Red is connected to pin 9
  The ground of Green to pin 10
  The ground of Blue to pin 11
  
refernce: rgbLED rgb( redGround, blueGround, greenGround)
change to your setup accordingly


The code below will got through the 3 functions used in the rgbLED library
*/

#include <rgbLED.h>

//Defining the redGroundPin, greenGroundPin, and blueGroundPin
rgbLED RGB(9, 10, 11);

void setup(){
} 

void loop(){
  
  //Hexadecimal color code
  //Red
  RGB.hexValue( 0xFF0000);
  delay( 1000);
  //Green
  RGB.hexValue( 0x00FF00);
  delay( 1000);
  
  //RGB color code
  //Blue
  RGB.rgbValue( 0, 0, 255);
  delay( 1000);
  //White
  RGB.rgbValue( 255, 255, 255);
  delay( 1000);
  
  //Transition colors with hexadecimal color code
  //Transition from red to green
  RGB.transColor( 0xFF0000, 0x00FF00, 10); // (startColor, stopColor, delayTime)
  //Transition from green to blue
  RGB.transColor( 0x00FF00, 0x0000FF, 10);
  //Transition from blue to red
  RGB.transColor( 0x0000FF, 0xFF0000, 10);

}








