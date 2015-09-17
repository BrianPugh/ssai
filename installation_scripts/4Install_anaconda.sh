#download latest version of anaconda before running script
cd ~/Downloads
bash Anaconda*.sh
echo 'export LD_LIBRARY_PATH=$HOME/anaconda/lib:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc

conda install hdf5
conda install pydot
conda install opencv
sudo apt-get install -y GraphViz

