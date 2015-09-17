cd ~/Downloads

# installing opencv
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y cmake
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y pkg-config
sudo apt-get install -y python-numpy python-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev libjasper-dev

sudo apt-get -qq install libopencv-dev build-essential checkinstall cmake pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils

wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.10/opencv-2.4.10.zip
unzip opencv-2.4.10.zip
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D BUILD_EXAMPLES=ON -D CUDA_GENERATION=Auto -D BUILD_NEW_PYTHON_SUPPORT=ON .

make -j $(($(nproc)+1))
sudo make install

#install other stuff
sudo apt-get install libprotobuf-dev libgoogle-glog-dev libgflags-dev protobuf-compiler 
sudo apt-get install libhdf5-serial-dev libleveldb-dev libsnappy-dev liblmdb-dev 
sudo apt-get install libboost-all-dev
sudo apt-get install libatlas-base-dev 
