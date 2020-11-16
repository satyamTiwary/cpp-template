sudo apt-get update
sudo apt install build-essential
sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" 
sudo apt-get install python3-pip

sudo apt-get install cmake
sudo apt-get install cppcheck
sudo apt-get install doxygen
sudo apt-get install graphviz

sudo apt install clang-tidy

pip3 install --user conan
pip3 install clang-format