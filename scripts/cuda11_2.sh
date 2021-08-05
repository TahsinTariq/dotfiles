# Link :
# https://developer.nvidia.com/cuda-11.2.2-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=deblocal


# https://docs.nvidia.com/cuda/archive/10.2/pdf/CUDA_Installation_Guide_Linux.pdf
# https://github.com/karpathy/karpathy.github.io/blob/master/css/main.css
# https://stackoverflow.com/questions/45477133/how-to-change-cuda-version
# https://github.com/phohenecker/switch-cuda
# https://ubuntu.pkgs.org/21.04/ubuntu-multiverse-amd64/nvidia-cuda-toolkit_11.2.2-1ubuntu1_amd64.deb.html


wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
#wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda-repo-ubuntu2004-11-2-local_11.2.2-460.32.03-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-2-local_11.2.2-460.32.03-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-2-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda

# Install cuda-toolkit
# sudo apt-get clean
sudo apt-get autoremove
sudo apt install nvidia-cuda-toolkit

