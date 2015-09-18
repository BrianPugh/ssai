# Installs the CUDA 7.5 Toolkit on your system

cd ~/Downloads

#Download the deb file for cuda 7.5
wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb

sudo dpkg -i cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
sudo apt-get update
sudo apt-get install -y cuda

#Add Global Variables
echo 'export PATH=/usr/local/cuda-7.5/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-7.5/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
