#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/hidewon/RaspberryPiMouse/lib/Pi2B+/4.4.34-v7+/
#cd /home/hidewon/RaspberryPiMouse/lib/Pi2B+/4.4.39-v7+/
/sbin/insmod rtmouse.ko

#sleep 1 # すぐにデバイスファイルができないので待つ
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0 # 安全のためモータの電源を切っておく
