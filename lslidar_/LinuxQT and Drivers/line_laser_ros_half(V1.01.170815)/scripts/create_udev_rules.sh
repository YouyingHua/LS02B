#!/bin/bash

echo "remap the device serial port(ttyUSBX) to  laser"
echo "ls01c usb cp210x connection as /dev/laser , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy laser.rules to  /etc/udev/rules.d/"
echo "`rospack find line_laser_ros`/scripts/laser.rules"
sudo cp `rospack find line_laser_ros`/scripts/laser.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
