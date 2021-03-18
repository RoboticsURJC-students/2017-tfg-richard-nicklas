#include "Led.h"

Led::Led(){
  if(spi_file_handle < 0){
    if(spi_setup()){
      fatal_error("spi_setup error");
    }
  }
  Address = 8;
}


int Led::set_led(uint8_t led, uint8_t red, uint8_t green, uint8_t blue){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_SET_LED;
  spi_array_out[2] = led;
  spi_array_out[3] = red;
  spi_array_out[4] = green;
  spi_array_out[5] = blue;
  return spi_transfer_array(6, spi_array_out, spi_array_in);
}

int Led::reset(){
  int res = set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 0, 0, 0);
  if(res){
    return res;
  }
  return ERROR_NONE;
}


int main()
{
	std::cout << "Start!\n";
	std::cout << "Turning LEDs on for 5s\n";
	
	Led *robot = new Led();
	
	robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 1, 1, 1);
 
	sleep(5);

	robot->reset();
	std::cout << "End!\n";
	
}
