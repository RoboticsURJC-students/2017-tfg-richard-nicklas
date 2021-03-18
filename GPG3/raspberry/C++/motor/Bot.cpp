#include "Bot.h"

Bot::Bot(){
  if(spi_file_handle < 0){
    if(spi_setup()){
      fatal_error("spi_setup error");
    }
  }
  Address = 8;
}


int Bot::spi_read_32(uint8_t msg_type, uint32_t &value){
  value = 0;
  spi_array_out[0] = Address;
  spi_array_out[1] = msg_type;
  // assign error to the value returned by spi_transfer_array, and if not 0:
  if(int error = spi_transfer_array(8, spi_array_out, spi_array_in)){
    return error;
  }
  if(spi_array_in[3] != 0xA5){
    return ERROR_SPI_RESPONSE;
  }
  value = ((spi_array_in[4] << 24) | (spi_array_in[5] << 16) | (spi_array_in[6] << 8) | spi_array_in[7]);
  return ERROR_NONE;
}

int Bot::spi_read_string(uint8_t msg_type, char *str, uint8_t chars){
  if((chars + 4) > LONGEST_SPI_TRANSFER){
    return -3;
  }
  spi_array_out[0] = Address;
  spi_array_out[1] = msg_type;
  // assign error to the value returned by spi_transfer_array, and if not 0:
  if(int error = spi_transfer_array(chars + 4, spi_array_out, spi_array_in)){
    return error;
  }
  if(spi_array_in[3] != 0xA5){
    return ERROR_SPI_RESPONSE;
  }
  for(uint8_t i = 0; i < chars; i++){
    str[i] = spi_array_in[i + 4];
  }
  return ERROR_NONE;
}

int Bot::spi_write_32(uint8_t msg_type, uint32_t value){
  spi_array_out[0] = Address;
  spi_array_out[1] = msg_type;
  spi_array_out[2] = ((value >> 24) & 0xFF);
  spi_array_out[3] = ((value >> 16) & 0xFF);
  spi_array_out[4] = ((value >> 8) & 0xFF);
  spi_array_out[5] = (value & 0xFF);
  return spi_transfer_array(6, spi_array_out, spi_array_in);
}


int Bot::set_led(uint8_t led, uint8_t red, uint8_t green, uint8_t blue){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_SET_LED;
  spi_array_out[2] = led;
  spi_array_out[3] = red;
  spi_array_out[4] = green;
  spi_array_out[5] = blue;
  return spi_transfer_array(6, spi_array_out, spi_array_in);
}

int Bot::set_motor_power(uint8_t port, int8_t power){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_SET_MOTOR_PWM;
  spi_array_out[2] = port;
  spi_array_out[3] = power;
  return spi_transfer_array(4, spi_array_out, spi_array_in);
}

int Bot::set_motor_position(uint8_t port, int32_t position){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_SET_MOTOR_POSITION;
  spi_array_out[2] = port;
  spi_array_out[3] = ((position >> 24) & 0xFF);
  spi_array_out[4] = ((position >> 16) & 0xFF);
  spi_array_out[5] = ((position >> 8) & 0xFF);
  spi_array_out[6] = (position & 0xFF);
  return spi_transfer_array(7, spi_array_out, spi_array_in);
}

int Bot::set_motor_dps(uint8_t port, int16_t dps){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_SET_MOTOR_DPS;
  spi_array_out[2] = port;
  spi_array_out[3] = ((dps >> 8) & 0xFF);
  spi_array_out[4] = (dps & 0xFF);
  return spi_transfer_array(5, spi_array_out, spi_array_in);
}

int Bot::set_motor_limits(uint8_t port, uint8_t power, uint16_t dps){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_SET_MOTOR_LIMITS;
  spi_array_out[2] = port;
  spi_array_out[3] = power;
  spi_array_out[4] = ((dps >> 8) & 0xFF);
  spi_array_out[5] = (dps & 0xFF);
  return spi_transfer_array(6, spi_array_out, spi_array_in);
}


int Bot::get_motor_status(uint8_t port, uint8_t &state, int8_t &power, int32_t &position, int16_t &dps){
  uint8_t msg_type;
  switch(port){
    case MOTOR_LEFT:
      msg_type = GPGSPI_MESSAGE_GET_MOTOR_STATUS_LEFT;
    break;
    case MOTOR_RIGHT:
      msg_type = GPGSPI_MESSAGE_GET_MOTOR_STATUS_RIGHT;
    break;
    default:
      fatal_error("get_motor_status error. Must be one motor at a time. MOTOR_LEFT or MOTOR_RIGHT.");
  }
  spi_array_out[0] = Address;
  spi_array_out[1] = msg_type;
  // assign error to the value returned by spi_transfer_array, and if not 0:
  if(int error = spi_transfer_array(12, spi_array_out, spi_array_in)){
    return error;
  }

  if(spi_array_in[3] != 0xA5){
    return ERROR_SPI_RESPONSE;
  }

  state    = spi_array_in[4];
  power    = spi_array_in[5];
  position = ((spi_array_in[6] << 24) | (spi_array_in[7] << 16) | (spi_array_in[8] << 8) | spi_array_in[9]);
  dps      = ((spi_array_in[10] << 8) | spi_array_in[11]);

  return ERROR_NONE;
}

int Bot::offset_motor_encoder(uint8_t port, int32_t position){
  spi_array_out[0] = Address;
  spi_array_out[1] = GPGSPI_MESSAGE_OFFSET_MOTOR_ENCODER;
  spi_array_out[2] = port;
  spi_array_out[3] = ((position >> 24) & 0xFF);
  spi_array_out[4] = ((position >> 16) & 0xFF);
  spi_array_out[5] = ((position >> 8) & 0xFF);
  spi_array_out[6] = (position & 0xFF);
  return spi_transfer_array(7, spi_array_out, spi_array_in);
}

int32_t Bot::get_motor_encoder(uint8_t port){
  int32_t value;
  get_motor_encoder(port, value);
  return value;
}

int Bot::get_motor_encoder(uint8_t port, int32_t &value){
  uint8_t msg_type;
  switch(port){
    case MOTOR_LEFT:
      msg_type = GPGSPI_MESSAGE_GET_MOTOR_ENCODER_LEFT;
    break;
    case MOTOR_RIGHT:
      msg_type = GPGSPI_MESSAGE_GET_MOTOR_ENCODER_RIGHT;
    break;
    default:
      fatal_error("get_motor_encoder error. Must be one motor at a time. MOTOR_LEFT or MOTOR_RIGHT.");
  }
  uint32_t Value;
  int res = spi_read_32(msg_type, Value);
  value = Value;
  return res;
}

int Bot::reset_all(){
  int res = set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 0, 0, 0);
  int res2 = set_motor_power(MOTOR_LEFT + MOTOR_RIGHT, MOTOR_FLOAT);
  int res3 = set_motor_limits(MOTOR_LEFT + MOTOR_RIGHT, 0, 0);
  if(res){
    return res;
  }else if(res2){
    return res2;
  }else if(res3){
    return res3;
  }
  return ERROR_NONE;
}

int Bot::get_manufacturer(char *str){
  return spi_read_string(GPGSPI_MESSAGE_GET_MANUFACTURER, str);
}

int Bot::get_board(char *str){
  return spi_read_string(GPGSPI_MESSAGE_GET_NAME, str);
}


int Bot::get_version_firmware(char *str){
  uint32_t value;
  // assign error to the value returned by spi_read_32, and if not 0:
  if(int error = spi_read_32(GPGSPI_MESSAGE_GET_FIRMWARE_VERSION, value)){
    return error;
  }
  sprintf(str, "%d.%d.%d", (value / 1000000), ((value / 1000) % 1000), (value % 1000));
  return ERROR_NONE;
}


int Bot::detect(bool critical){
  char ErrorStr[100];
  char str[21];
  int error;
  // assign error to the value returned by get_manufacturer, and if not 0:
  if(error = get_manufacturer(str)){
    if(critical){
      fatal_error("detect error: get_manufacturer failed. Perhaps the GoPiGo3 is not connected, or the address is incorrect.");
    }else{
      return error;
    }
  }
  if(strstr(str, "Dexter Industries") != str){
    if(critical){
      fatal_error("detect error: get_manufacturer string is not 'Dexter Industries'");
    }else{
      return ERROR_WRONG_MANUFACTURER;
    }
  }

  // assign error to the value returned by get_board, and if not 0:
  if(error = get_board(str)){
    if(critical){
      fatal_error("detect error: get_board failed");
    }else{
      return error;
    }
  }
  if(strstr(str, "GoPiGo3") != str){
    if(critical){
      fatal_error("detect error: get_board string is not 'GoPiGo3'");
    }else{
      return ERROR_WRONG_DEVICE;
    }
  }

  // assign error to the value returned by get_version_firmware, and if not 0:
  if(error = get_version_firmware(str)){
    if(critical){
      fatal_error("detect error: get_version_firmware failed");
    }else{
      return error;
    }
  }
  if(strstr(str, FIRMWARE_VERSION_REQUIRED) != str){
    if(critical){
      sprintf(ErrorStr, "detect error: GoPiGo3 firmware needs to be version %sx but is currently version %s", FIRMWARE_VERSION_REQUIRED, str);
      fatal_error(ErrorStr);
    }else{
      return ERROR_FIRMWARE_MISMATCH;
    }
  }
  return ERROR_NONE;
}



int main()
{

	Bot *robot = new Bot();

	robot->detect();
//LEDS
//
	std::cout << "Start!\n";
	std::cout << "Blink for 5s\n";
	
	robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 1, 1, 1);
 
	sleep(1);

	robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 0, 0, 0);
 
	sleep(1);

	robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 1, 1, 1);
 
	sleep(1);
	
	robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 0, 0, 0);
 
	sleep(1);

	robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 1, 1, 1);
 
	sleep(1);

		robot->set_led((LED_EYE_LEFT + LED_EYE_RIGHT + LED_BLINKER_LEFT + LED_BLINKER_RIGHT), 0, 0, 0);

	std::cout << "Turning LEDs Off\n";

//MOTORS

 // Reset the encoders
 // robot->offset_motor_encoder(MOTOR_LEFT, robot->get_motor_encoder(MOTOR_LEFT));
 // robot->offset_motor_encoder(MOTOR_RIGHT, robot->get_motor_encoder(MOTOR_RIGHT));


/*Loop Detect
 
  int loops= 0;

  while(loops<1000){
    // Read the encoders
    int32_t EncoderLeft = robot->get_motor_encoder(MOTOR_LEFT);
    int32_t EncoderRight = robot->get_motor_encoder(MOTOR_RIGHT);

    // Use the encoder value from the left motor to control the position of the right motor
//    robot->set_motor_position(MOTOR_RIGHT, EncoderLeft);
    robot->set_motor_dps(MOTOR_RIGHT+MOTOR_LEFT, 1000);

    // Display the encoder values
    printf("Encoder Left: %6d  Right: %6d\n", EncoderLeft, EncoderRight);

    // Delay for 10ms
    usleep(10000);
    loops++;
  }
*/
	std::cout << "Go forward and back for 4s\n";
    robot->set_motor_dps(MOTOR_RIGHT+MOTOR_LEFT, 1000);
    sleep(1);
    robot->set_motor_dps(MOTOR_RIGHT+MOTOR_LEFT, -1000);
    sleep(1);
    robot->set_motor_dps(MOTOR_RIGHT+MOTOR_LEFT, 1000);
    sleep(1);
    robot->set_motor_dps(MOTOR_RIGHT+MOTOR_LEFT, -1000);
    sleep(1);

/*
  int loops= 0;
  int32_t move =10;

  while(loops<100){

	robot->set_motor_position(MOTOR_RIGHT, move);
	robot->set_motor_position(MOTOR_LEFT, move);
    printf("Move: %6d\n", move);
    usleep(10000);
    loops++;
    move++;
  }

 */
	robot->reset_all();
	std::cout << "End!\n";
	
}
