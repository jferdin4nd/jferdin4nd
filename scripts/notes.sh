# usermod, video 1
sudo usermod -aG (nameOfTheGroup) (nameOfTheUser) #añadir al usuario a un grupo
sudo usermod -aG sudo (nameOfTheUser) #añadir a un usuario al grupo sudo
sudo usermod -d #cambiar el directorio home
sudo usermod -d /home/myhome --move-home (nameOfTheUser)
sudo usermod -U 
chage -l #change user password expiry information, view info
#sudo, video 2
su -
groups #check already member
sudo -l # check command permissions
sudo !! #run last command as sudo
sudo nano /etc/sudoers
adduser userdel -r #(-r remove homedirectory)


sudo apt-get remove '^cockpit.*'  #Remove all packages coincidence 
 
 uptime # see the uptime of the computer / server
 wall # broadcast a message to all users
 write # send messages for one user write (userName)
 mesg y
 who # see all user logged to the system
 sort # sort all lines in a file
 shutdown -h now #schedule the system shutdown
 whatis #short description of a command
 lsubs #list usb devices
 lspci #list all pci bus devices.
 watch -d #execute a program viewing periodicaly the changes in screen


