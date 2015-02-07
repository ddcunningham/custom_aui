###Remember to:
#make yauort and pacman noninteractive
#
#
#
#have fun
#allowing world mirrors in at the end of pacman mirrorlist
wget -O - "https://www.archlinux.org/mirrorlist/all/" | sudo tee -a /etc/pacman.d/mirrorlist > /dev/null
sudo sed -i -r "s/^#(Server.*)/\1/g" /etc/pacman.d/mirrorlist.bak
#begin the sudofying
sudo -v
#get zsh
sudo pacman -S zsh
#set zsh
sudo chsh -s /bin/zsh $USER
#YADR/zprezto install
https://gist.githubusercontent.com/ddcunningham/67e91574badd7d283ffd/raw/21e6ea29813b623b6d86ba9599a96d3a38c922e6/PnYinstall.sh
#set up RVM - WIP
sudo pacman -S git curl
curl -L get.rvm.io | sudo bash -s stable
sudo usermod -a davidcunningham -G rvm
#install PAC
yaourt -S pacmanager
#install rdesktop
sudo pacman -S rdesktop
#install copyq
yaourt -S copyq
#install raritanmpc
raritan-mpc
#install funpidgin
yaourt -S carrier
#install keepass and all its bullshit
sudo pacman -S keepass
sudo pacman -S xsel
sudo pacman -S xdotool
yaourt -S keepass-plugin-http

