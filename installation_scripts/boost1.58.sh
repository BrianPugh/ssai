#script to download and install boost 1.57.  It may not be necessary

cd ~/Downloads
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev build-essential libbz2-dev 
wget http://downloads.sourceforge.net/project/boost/boost/1.58.0/boost_1_58_0.tar.bz2
tar xvjf ./boost_1_58_0.tar.bz2 
cd boost_1_58/
./bootstrap.sh –prefix=/opt/boost_1_58_0
sudo ./b2
sudo ./b2 install
