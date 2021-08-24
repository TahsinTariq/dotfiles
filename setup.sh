# Symlinks
ln -s $(pwd)/.zshrc ~/
ln -s $(pwd)/.zsh_alias ~/
ln -s $(pwd)/.condarc ~/
ln -s $(pwd)/OpenRGB ~/.config
ln -s $(pwd)/ckb-next ~/.config
ln -s $(pwd)/applications ~/.local/share
ln -s $(pwd)/starship.toml ~/.config
ln -s $(pwd)/.alacritty.yml ~/
ln -s $(pwd)/okularrc ~/.config


# The following 2 lines did not work for me
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# sudo apt install zsh-syntax-highlighting
# Instead, these 2 worked
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sudo apt-get install qt5-style-plugins

# Zotero Client install
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash
sudo apt update
sudo apt install zotero


# bash installs 

sudo apt-get update

sudo apt install -y neofetch
sudo apt install -y gparted
sudo apt install -y psensor
# sudo apt install tree
# sudo apt install audacity
# sudo apt install peek
sudo apt install -y guake
sudo apt install -y ckb-next
guake --change-palette=Nord
sudo apt install -y gnome-tweaks
sudo apt install -y code
sudo apt install -y vlc --fix-missing
sudo apt install -y software-properties-gtk
sudo apt install -y qbittorrent obs-studio qt5-styles-plugins
# for OBS
sudo apt install -y v4l2loopback-dkms ffmpeg       

./gnome_ext.sh
# to install user themes
#sudo apt install gnome-shell-extensions
#sudo apt install chrome-gnome-shell
# might need to make a folder named ~/.themes
# pop-nord-dark 
# or Nordic:https://github.com/EliverLara/Nordic
# mkdir ~/.themes
# icons: https://www.gnome-look.org/s/Gnome/p/1533591
# https://www.gnome-look.org/p/1427194/ ===> better
# mkdir ~/.icons
# gsettings set org.gnome.desktop.interface icon-theme NordArc-Icons
# cp -R Pop-nord-dark ~/.themes
# ------------------
# Or, might need to copy it over to /usr/share/themes
# sudo cp -r Pop-nord-dark /usr/share/themes

# List active extensions
# https://manpages.ubuntu.com/manpages/trusty/man1/gsettings.1.html
# gsettings get org.gnome.shell enabled-extensions
# or, gnome-extensions list or, gnome-extensions list --enabled
#gsettings set org.gnome.shell enabled-extensions "['user-theme@gnome-shell-extensions.gcampax.github.com', 'alt-tab-raise-first-window@system76.com', 'always-show-workspaces@system76.com', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'pop-shell@system76.com', 'pop-shop-details@system76.com', 'workspace-indicator@gnome-shell-extensions.gcampax.github.com', 'windowsNavigator@gnome-shell-extensions.gcampax.github.com', 'system76-power@system76.com', 'screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com']"

#gsettings set org.gnome.desktop.interface gtk-theme "Pop-nord-dark"
#gsettings set org.gnome.desktop.wm.preferences theme "Pop-nord-dark"
#gsettings set org.gnome.shell.extensions.user-theme name Pop-nord-dark
gsettings set org.gnome.shell.extensions.pop-shell hint-color-rgba 'rgb(104,152,166)'
# found using gsettings list-schemas | grep "guake" 
# gsettings list-writable guake.keybindings.global
# gsettings list-recursively guake.keybindings
#guake
gsettings set guake.keybindings.local clipboard-paste '<Primary>v'
gsettings set guake.keybindings.local clipboard-copy '<Primary>x'


# ZSH
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s $(which zsh)

# installing starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# installing local version of openRGB
# /work/OpenRGB.AppImage

# remove the weather in notifications panel : https://www.reddit.com/r/pop_os/comments/gjlbvh/tut_how_to_disable_the_weather_option_on_top_bar/
sudo mv /usr/share/applications/org.gnome.Weather.desktop /usr/share/applications/org.gnome.Weather.desktop.disabled
# then restart gnome shell
killall -3 gnome-shell

# remove title bar when possible: 
# https://extensions.gnome.org/extension/1732/gtk-title-bar/
# Hot-Corners:
# https://extensions.gnome.org/extension/4167/custom-hot-corners-extended/



