#installs cudNN on the system.  Note the .tgz file must be in ~/Downloads
#should restart system after running this script

cd ~/Downloads
tar xvf cudnn*.tgz
cd cuda
sudo cp include/*.h /usr/local/cuda/include/
sudo cp lib64/*.so* /usr/local/cuda/lib64/

