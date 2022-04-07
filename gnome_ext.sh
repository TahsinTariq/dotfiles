# install gnome shell extension installer
# https://github.com/brunelli/gnome-shell-extension-installer
wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
chmod +x gnome-shell-extension-installer
sudo mv gnome-shell-extension-installer /usr/bin/

# install extenssions by number
gnome-shell-extension-installer 1317 4000 3193 779 4167 1732 18 19 21 7 1112 1460
# 3499 Application Volume Mixer