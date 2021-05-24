# bash installs 

sudo apt-get update

sudo apt install neofetch
sudo apt install gparted
sudo apt install psensor
# sudo apt install tree
# sudo apt install audacity
# sudo apt install peek
sudo apt install guake
sudo apt install ckb-next
guake --change-palette=Nord
sudo apt install gnome-tweak-tool 
sudo apt install -y code
sudo apt install -y vlc --fix-missing
sudo apt install -y software-properties-gtk
# to install user themes
sudo apt install gnome-shell-extensions
sudo apt install chrome-gnome-shell
# might need to make a folder named ~/.themes
#  mkdir ~/.themes
# cp -R Pop-nord-dark ~/.themes
# ------------------
# Or, might need to copy it over to /usr/share/themes
# sudo cp -r Pop-nord-dark /usr/share/themes

# List active extensions
# https://manpages.ubuntu.com/manpages/trusty/man1/gsettings.1.html
# gsettings get org.gnome.shell enabled-extensions
# or, gnome-extensions list or, gnome-extensions list --enabled
gsettings set org.gnome.shell enabled-extensions "['user-theme@gnome-shell-extensions.gcampax.github.com', 'alt-tab-raise-first-window@system76.com', 'always-show-workspaces@system76.com', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'pop-shell@system76.com', 'pop-shop-details@system76.com', 'workspace-indicator@gnome-shell-extensions.gcampax.github.com', 'windowsNavigator@gnome-shell-extensions.gcampax.github.com', 'system76-power@system76.com', 'screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com']"

gsettings set org.gnome.desktop.interface gtk-theme "Pop-nord-dark"
gsettings set org.gnome.desktop.wm.preferences theme "Pop-nord-dark"
gsettings set org.gnome.shell.extensions.user-theme name Pop-nord-dark

# found using gsettings list-schemas | grep "guake" 
# gsettings list-writable guake.keybindings.global
# gsettings list-recursively guake.keybindings
gsettings set guake.keybindings.local clipboard-paste '<Primary>v'
gsettings set guake.keybindings.local clipboard-copy '<Primary>x'

# ZSH
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo apt install zsh-syntax-highlighting
chsh -s $(which zsh)

# installing local version of openRGB
/work/OpenRGB.AppImage

# Symlinks
ln -s ../.zshrc ~/
ln -s ../.condarc ~/
ln -s ../OpenRGB ~/.config
ln -s ../ckb-next ~/.config
ln -s ../applications ~/.local/share