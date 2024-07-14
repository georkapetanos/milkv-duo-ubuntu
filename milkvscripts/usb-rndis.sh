#!/bin/sh

/etc/uhubon.sh device >> /tmp/rndis.log 2>&1
/etc/run_usb.sh probe rndis >> /tmp/rndis.log 2>&1
echo "6e:e8:09:7a:0d:00" > /tmp/usb/usb_gadget/cvitek/functions/rndis.usb0/dev_addr
/etc/run_usb.sh start rndis >> /tmp/rndis.log 2>&1

sleep 0.5
ip link set dev usb0 up
ip a add 192.168.42.1/24 dev usb0
sleep 0.5
