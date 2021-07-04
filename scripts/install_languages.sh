# Kernel problems  (reminder: don't delete kernel just cause you feel like it)

# If ya need to install a new/different kernel
# sudo apt install synaptic
#                  ^^^^^^^^
#                  This Helps a LOT
# sudo apt-get install linux-image-5.11.0-7612-generic
#                                  ^^^^^^^^^^^
#                       or, you could also do this



# Python

sudo apt-get install python3.8
# 3.7
sudo apt-get install wget build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
cd ~/Downloads/
sudo wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
sudo tar xzf Python-3.7.9.tgz 
cd Python-3.7.9/
sudo ./configure --enable-optimizations
sudo make altinstall
sudo apt autoremove 

# Anaconda
# cd ~/Downloads/
# wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
# #  https://docs.anaconda.com/anaconda/install/linux/
# zsh ./Anaconda3-2020.11-Linux-x86_64.sh
# conda config --set auto_activate_base False
# conda install -c conda-forge jupyter_contrib_nbextensions
# conda install -c conda-forge jupyter_nbextensions_configurator
# conda install -c conda-forge jupyterthemes
# jt -t monokai -nfs 13 -ofs 12 -T -N -kl
# conda activate


# Rust and Cargo
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
# if cargo doesn't work
source "$HOME/.cargo/env"
rustc --version
cargo --version


# Jekyll and ruby
sudo apt-get install ruby-full
cd ~/Downloads/
sudo gem install jekyll --version 3.9.0
sudo gem install bundler

# install node and npm
sudo apt update
sudo apt install nodejs
sudo apt install npm


# install draw.io
wget https://github.com/jgraph/drawio-desktop/releases/download/v14.1.8/draw.io-amd64-14.1.8.deb
sudo dpkg -i draw.io-amd64-14.1.8.deb


sudo rm -rf ~/Downloads/Python-3.7.9
sudo rm -rf ~/Downloads/Python-3.7.9.tgz 
sudo rm -rf ~/Downloads/draw.io-amd64-14.1.8.deb 



# details on installing CUDA
  #https://docs.nvidia.com/cuda/archive/10.2/pdf/CUDA_Installation_Guide_Linux.pdf
  #https://stackoverflow.com/questions/45477133/how-to-change-cuda-version
  #https://github.com/phohenecker/switch-cuda


# Themes and Icons
 # https://www.gnome-look.org/p/1460607/
 # https://www.pling.com/p/1279924/
 # https://www.opendesktop.org/s/Gnome/p/1267246/
 
# Font
 # Source code pro -- install it from google 
