mkdir ~/code
cd ~/code
git clone -b ssai --single-branch https://github.com/mitmul/caffe.git 
cd caffe
cp Makefile.config.example Makefile.config
sed -i 's/# USE_CUDNN := 1/USE_CUDNN := 1/' Makefile.config
sed -i 's|# ANACONDA_HOME := $(HOME)/anaconda|ANACONDA_HOME := $(HOME)/anaconda|' Makefile.config
sed -i 's|# PYTHON_INCLUDE := $(ANACONDA_HOME)|PYTHON_INCLUDE := $(ANACONDA_HOME)|' Makefile.config
sed -i 's|# $(ANACONDA_HOME)|$(ANACONDA_HOME)|' Makefile.config
sed -i 's|# PYTHON_LIB := $(ANACONDA_HOME)|PYTHON_LIB := $(ANACONDA_HOME)|' Makefile.config
sed -i 's|# WITH_PYTHON_LAYER := 1|WITH_PYTHON_LAYER := 1|' Makefile.config

for req in $(cat python/requirements.txt); do conda install $req; done
pip install -r python/requirements.txt
pip install lmdb

make all -j $(($(nproc)+1))
make test -j $(($(nproc)+1))
make runtest -j $(($(nproc)+1))
make pycaffe -j $(($(nproc) + 1))

echo 'export CAFFE_ROOT=$HOME/code/caffe' >> ~/.bashrc
echo 'export PYTHONPATH=$CAFFE_ROOT/python:$PYTHONPATH' >> ~/.bashrc

source ~/.bashrc
