## -*- coding: utf-8 -*-
"""
Created on Mon Mar 29 14:08:24 2021

@author: Rich
"""

import time
import serial

#-- Poner el nombre del puerto serie aquí
#-- En windows será COMx
SERIAL_PORT = "COM6"


#execution timeout
timeout = time.time() + 10 #-- s


#-- Abrir el puerto serie
with serial.Serial(SERIAL_PORT, 115200) as sp:

    #-- Imprimir la información del pueto serie
    print("Puerto serie: {}".format(sp.portstr))

    #-- Valores para la secuencia de los LEDs ALH
    sec = [0xaa, 0x55]
    #-- Valores para la secuencia de los LEDs GPG
    #   spi_array_out[0] = Address;   //8
    #   spi_array_out[1] = GPGSPI_MESSAGE_SET_LED; //6 (enum)
    #   spi_array_out[2] = led; // 0x02
    #   spi_array_out[3] = red; //1
    #   spi_array_out[4] = green; //1
    #   spi_array_out[5] = blue; //1
    secGPG = [ 0x08, 0x06, 0x02, 0x01, 0x01, 0x01]

    #-- Bucle infinito. Acabar pulsando ctrl-C
    while True:
 
        tm = time.time()
        if tm > timeout:
            sp.close()
            break
 
        for value in secGPG:
            print("antes del write")
            #-- Enviar dato por puerto serie
            sp.write(bytes([value]))
            print("despues del write")
            #-- Leer un dato del puerto serie
            #eco = sp.read()

            #-- Imprimir lo enviado y lo recibido
            print("Sent: {:02X}, Read: ??".format(value))

            #-- Esperar medio segundo
            time.sleep(0.5)