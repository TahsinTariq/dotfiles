# Link :  download the proper cuDNN version compatible with the tensorflow and CUDA version
# https://developer.nvidia.com/rdp/cudnn-archive

# Installation steps here:
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html
#  - Follow sub-chapter 2.3.2 - installing using the .deb package

# Another install process on medium:
# https://medium.com/analytics-vidhya/installing-tensorflow-with-cuda-cudnn-gpu-support-on-ubuntu-20-04-f6f67745750a

# TODO : use optional wget to download the deb packages?
#  -- try docker: https://ngc.nvidia.com/catalog/containers/nvidia:tensorflow

# SIDENOTE (incase I forget): used tensorflow 2.4.0 cause 2.5.0 needed CUDA 11.2 which needs nvidia driver > 460.73

sudo dpkg -i libcudnn8_8.0.5.39-1+cuda11.0_amd64.deb
sudo dpkg -i libcudnn8-dev_8.0.5.39-1+cuda11.0_amd64.deb
sudo dpkg -i libcudnn8-samples_8.0.5.39-1+cuda11.0_amd64.deb