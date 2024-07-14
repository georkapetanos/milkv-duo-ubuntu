#!/usr/bin/python3

import time
from bmp280 import BMP280
import os

try:
        from smbus2 import SMBus
except ImportError:
        from smbus import SMBus

bus = SMBus(2)
bmp280 = BMP280(i2c_dev=bus)

while True:
        temp = bmp280.get_temperature()
        pressure = bmp280.get_pressure()
        print('Temp={:0.2f} C '.format(temp)+'Pressure={:0.2f} hPa'.format(pressure))
        time.sleep(10)

