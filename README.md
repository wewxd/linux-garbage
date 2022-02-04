## adm  
A basic script i use as a display manager because CDM is unable to start an X session when i log in as someone else than root, and writing this is easier than fixing CDM.  
I didn't want a graphical display manager, and i wanted the display manager to only be launched when i log in tty1.  
If you want to use it you can disable your actual display manager and append the script to ~/.bash_profile or /etc/profile

## Poweredge Fan Control
Script controling the fan speed for Dell Poweredge servers.
Edit line 3-5 of `fancontrol` to change fan speed according to temperature.
With current config, the fans will be at 0% below 30°C, 3% at 36°C, 5% at 40°C, etc.
`interval` is the delay between temperature checks.  
  
You can make it a service by editing `fancontrol.service` with the script's path, 
and putting it in `/etc/systemd/system`.
Then start it like any service, `systemctl start fancontrol`

## mon
Just a script that sets monitors like I want.
It aligns all monitors by the bottom, sets largest one as primary,
puts the laptop monitor on the left and orders the others from left to right from largest to smallest.
Also commented is a version of the script that turns off every monitor except the largest.
