git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense

sudo apt-get install cmake libusb-1.0-0-dev pkg-config libgtk-3-dev libssl-dev libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev at libudev-dev 

mkdir build

cd build

dir=$(pwd)

cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=true "$(dirname "$dir")"

cmake --build .

sudo make install

echo "Installation done!"
