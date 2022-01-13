apt-get install git libftdi1-2 libftdi1-dev libudev-dev cmake build-essential pkg-config
git clone https://github.com/lbaitemple/openFPGALoader
cd openFPGALoader/
mkdir build
cd build/
cmake ..
make 
sudo make install
