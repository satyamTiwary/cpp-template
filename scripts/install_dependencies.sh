# Essential
# sudo apt-get update
sudo apt install build-essential clang-11 clang-tidy ccache 

# Cpp
sudo apt-get install mosquitto python3 python3-pip cmake cppcheck 

# Install Conan
sudo python3 -m pip install conan
sudo ln -s ~/.local/bin/conan /usr/local/bin/conan

# Optional dependencies
pip3 install setuptools
pip3 install wheel
pip3 install conan clang-format

sudo apt-get install doxygen graphviz