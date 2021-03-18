#!/usr/bin/python

# import the GoPiGo3 drivers
import time
import easygopigo3 as easy


# This example shows how to read values from the Distance Sensor

# Create an instance of the GoPiGo3 class.
gpg = easy.EasyGoPiGo3()

    # Create an instance of the Distance Sensor class.
ds = gpg.init_distance_sensor()


while True:

    # Directly print the values of the sensor.
    dist = ds.read_mm()
 
    print( "Distance Sensor Reading (mm): " + str(dist))
    
