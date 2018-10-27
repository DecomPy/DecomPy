# DecomPy
SER 401 Team 8- Adaptive Machine Learning Decompiler

### Prerequisites
In order to run this project, you will need to install:

The following python packages:
numpy 1.15.3
tensorflow 1.11.0
Sphinx 1.8.1
tensorboard 1.12.0

The following apt packages:
llvm 1:6.0-41~exp5~ubuntu1

It is also recommended to install the following apt packages:
cmake >= 3.10.2-1ubuntu2  
clang >= 1:6.0-41~exp5~ubuntu1  
gdb >= 8.1-0ubuntu3 


Newer versions have not been tested and are not suggested, however they may work.

To do so, you can run the following:
```bash
# Update the system
apt -y update

# Install python and pip
apt install -y python3.6 python-pip

# Install llvm
apt install llvm

# Recommended:
apt install -y cmake clang gdb

# Install python libraries
# (note tensorflow depends on numpy and tensorboard and they will be resolved)
pip install tensorflow==1.11.0
pip install sphinx==1.8.1
```
