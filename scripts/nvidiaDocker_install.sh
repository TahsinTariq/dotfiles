# Nvidia Docker2  installs
# Needed for runwayML

# resource : CUDA Archive
# https://developer.nvidia.com/cuda-toolkit-archive

# While installing cuda, make sure to go to software and updates and check the proper driver source form the "other software" tab

# nvcc and nvidia-smi quirk :
# https://stackoverflow.com/questions/53422407/different-cuda-versions-shown-by-nvcc-and-nvidia-smi


curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey |   sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu20.04/nvidia-docker.list |   sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade 
sudo apt-get install docker-ce
sudo apt-get install nvidia-docker2
sudo pkill -SIGHUP dockerd
sudo groupadd docker
sudo usermod -aG docker tahsin
newgrp docker

# Install Container toolkit to solve error here: 
# https://github.com/NVIDIA/nvidia-docker/issues/1243#issuecomment-615134975
sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker

# test if nvidia-smi runs for a container
sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi

