#!/bin/bash

bash /root/p2plink/bash_scripts/milkv_gpio_setup.sh
sleep 1
screen -S bmp_lora -d -m
sleep 1
screen -S bmp_lora -X stuff 'cd /root/p2plink^M'
screen -S bmp_lora -X stuff 'python3 ./python_scripts/bmp_sensor.py^M'
