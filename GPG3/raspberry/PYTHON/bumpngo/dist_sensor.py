#!/usr/bin/python

# import the GoPiGo3 drivers
import time
import easygopigo3 as easy


# This example shows how to read values from the Distance Sensor

# Create an instance of the GoPiGo3 class.
gpg = easy.EasyGoPiGo3()

try:
    # Create an instance of the Distance Sensor class.
    ds = gpg.init_distance_sensor()

    #execution timeout
    timeout = time.time() + 10



    gpg.stop()
    while True:

        tm = time.time()
        if tm > timeout:
            gpg.stop()
            break
        # Directly print the values of the sensor.
        dist = ds.read_mm()
    
        print( "Distance Sensor Reading (mm): " + str(dist))
    
        if(dist >= 100):
            #gpg.drive_cm(3,true)
            gpg.forward()
            #gpg.motor1(1,127)
            #gpg.backward()
        else:
            gpg.stop()
            gpg.backward()
            #time.sleep(0.5)
            gpg.stop()
            gpg.right()
            time.sleep(1)
            gpg.stop()

except Exception as e:
    print(e)
    gpg.stop()
finally:
    gpg.stop()
