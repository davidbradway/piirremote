echo "piirremote"
echo "Setup"
echo "see: http://alexba.in/blog/2013/01/06/setting-up-lirc-on-the-raspberrypi/"
echo "install Lirc"

#sudo apt-get install lirc -y

echo "enable and configure the lirc_rpi kernel module"
echo "and add the lines below to the file"
echo "You may need to go edit /etc/modules so the gpio_out_pin parameter points to the pin controlling the IR LED (in this case, it's pin 22)."

echo "lirc_dev
lirc_rpi gpio_out_pin=22" > .temp
#more .temp
#sudo cat .temp >> /etc/modules
rm .temp

echo "Next, do add the following configuration to the Lirc hardware file"

echo "LIRCD_ARGS=\"--uinput\"
LOAD_MODULES=true
DRIVER=\"default\"
DEVICE=\"/dev/lirc0\"
MODULES=\"lirc_rpi\"
LIRCD_CONF=\"\"
LIRCMD_CONF=\"\"" > .temp1
#more .temp1
#sudo cat .temp1 >> /etc/lirc/hardware.conf
rm .temp1

echo "Specify a profile that emulates a specific remote control."
echo "The Lirc website http://lirc.sourceforge.net/remotes/ offers a long list of profiles"

sudo cat BN59-01041A >> /etc/lirc/lircd.conf

echo "restart Lirc"

sudo /etc/init.d/lirc restart

echo "Finally, reboot the Raspberry Pi"

sudo reboot
