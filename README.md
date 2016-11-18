# piirremote

## Setup

http://alexba.in/blog/2013/01/06/setting-up-lirc-on-the-raspberrypi/

install Lirc

`sudo apt-get install lirc`

enable and configure the lirc_rpi kernel module. To do so, open modules in the Nano editor

`sudo nano /etc/modules`

and add the lines below to the file:

`lirc_dev`
`lirc_rpi gpio_out_pin=22`

Make sure that the gpio_out_pin parameter points to the pin controlling the IR LED (in this case, it's pin 22). 

Next, do `sudo nano /etc/lirc/hardware.conf` and add the following configuration to the file:

`LIRCD_ARGS="--uinput"`
`LOAD_MODULES=true`
`DRIVER="default"`
`DEVICE="/dev/lirc0"`
`MODULES="lirc_rpi"`
`LIRCD_CONF=""`
`LIRCMD_CONF=""`

Now, reboot the Raspberry Pi using

`sudo reboot`

Specify a profile that emulates a specific remote control. 

The project's website http://lirc.sourceforge.net/remotes/ offers a long list of profiles

Do `sudo nano /etc/lirc/lircd.conf` 

paste the profile into it, save the changes, and restart LIRC with:

`sudo /etc/init.d/lirc restart`

Try `irsend SEND_ONCE Samsung_BN59-01041A KEY_POWER` and if everything works properly, your TV should turn on.

Install Flask

`pip install Flask`

## Run Flask App
