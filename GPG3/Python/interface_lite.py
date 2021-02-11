·2 cerebros 1 robot
	·ver como se comunican(ver en python como se llaman a los actuadores)

	Python
		pigpio
			spidev(SPI)
				


hardware_connected = True

import subprocess # for executing system calls
try:
    import spidev
    import fcntl      # for lockf mutex support
except:
    hardware_connected = False
    print ("Can't import spidev or fcntl")

import math       # import math for math.pi constant
import time


def __init__(self, addr = 8, detect = True):
    """
    Do any necessary configuration, and optionally detect the GoPiGo3
    * Optionally set the SPI address to something other than 8
    * Optionally disable the detection of the GoPiGo3 hardware. This can be used for debugging
      and testing when the GoPiGo3 would otherwise not pass the detection tests.
    """
    
    # Make sure the SPI lines are configured for mode ALT0 so that the hardware SPI controller can use them
    # subprocess.call('gpio mode 12 ALT0', shell=True)
    # subprocess.call('gpio mode 13 ALT0', shell=True)
    # subprocess.call('gpio mode 14 ALT0', shell=True)


    import pigpio
    p = pigpio.pi()
    p.set_mode(9, pigpio.ALT0)
    p.set_mode(10, pigpio.ALT0)
    p.set_mode(11, pigpio.ALT0)
    
    self.SPI_Address = addr



LED_EYE_LEFT      = 0x02
LED_EYE_RIGHT     = 0x01
LED_BLINKER_LEFT  = 0x04
LED_BLINKER_RIGHT = 0x08
LED_LEFT_EYE      = LED_EYE_LEFT
LED_RIGHT_EYE     = LED_EYE_RIGHT
LED_LEFT_BLINKER  = LED_BLINKER_LEFT
LED_RIGHT_BLINKER = LED_BLINKER_RIGHT
LED_WIFI  = 0x80 # Used to indicate WiFi status. Should not be controlled by the user.

SPI_MESSAGE_TYPE = Enumeration("""
        NONE,
        GET_MANUFACTURER,
        GET_NAME,
        GET_HARDWARE_VERSION,
        GET_FIRMWARE_VERSION,
        GET_ID,
        SET_LED,
		#...
""")




def spi_transfer_array(self, data_out):
    """
    Conduct a SPI transaction
    Keyword arguments:
    data_out -- a list of bytes to send. The length of the list will determine how many bytes are transferred.
    Returns a list of the bytes read.
    """
    result = GPG_SPI.xfer2(data_out)
    return result




def set_led(self, led, red, green = 0, blue = 0):
    """
    Set an LED
    Keyword arguments:
    led -- The LED(s). LED_LEFT_EYE, LED_RIGHT_EYE, LED_LEFT_BLINKER, LED_RIGHT_BLINKER, and/or LED_WIFI.
    red -- The LED's Red color component (0-255)
    green -- The LED's Green color component (0-255)
    blue -- The LED's Blue color component (0-255)
    """

    if led < 0 or led > 255:
        return

    if red > 255:
        red = 255
    if green > 255:
        green = 255
    if blue > 255:
        blue = 255

    if red < 0:
        red = 0
    if green < 0:
        green = 0
    if blue < 0:
        blue = 0

    outArray = [self.SPI_Address, self.SPI_MESSAGE_TYPE.SET_LED, led, red, green, blue]
    reply = self.spi_transfer_array(outArray)