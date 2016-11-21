# piirremote

## Setup

http://alexba.in/blog/2013/01/06/setting-up-lirc-on-the-raspberrypi/

## Make installer executable

`chmod a+x install.sh`

## Execute the installer

`sudo ./install.sh`

http://raspberrypi.stackexchange.com/questions/50016/lirc-irsend-could-not-connect-to-socket-irsend-no-such-file-or-directory

http://blog.riyas.org/2014/01/raspberry-pi-ir-blaster-control-your.html

https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=62063

http://raspberrypi.stackexchange.com/questions/52112/raspberry-pi-3-lirc-could-not-connect-to-socket

## Test IRSEND

`irsend LIST "" ""`
`irsend LIST Samsung_BN59-01041A ""`

Try `irsend SEND_ONCE Samsung_BN59-01041A KEY_POWER` and if everything works properly, your TV should turn on.

## Run Flask App

`sudo python remote.py`
