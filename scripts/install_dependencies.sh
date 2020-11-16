# Essential
# sudo apt-get update
sudo apt install build-essential
sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" 
sudo apt-get install python3-pip

# Cpp
sudo apt-get install cmake cppcheck
sudo apt install clang-tidy ccache
pip3 install conan clang-format

# Optional
sudo apt-get install doxygen graphviz
