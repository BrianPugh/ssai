#download anaconda and cudNN via browser

sudo apt-get install git

mkdir ~/code
cd ~/code
git clone https://github.com/BrianPugh/ssai.git
cd ssai/installation_scripts

bash 1Install_CUDA.sh 
bash 2Install_cudNN.sh

#now reboot, using the following command
sudo reboot

cd ~/code/ssai/installation_scripts
bash 3Install_dependencies.sh

#now install anaconda, install to default location and say yes to adding
#to bashrc file.
bash 4Install_anaconda.sh 

#reboot again
sudo reboot

cd ~/code/ssai/installation_scripts
bash 5Install_caffe.sh 


