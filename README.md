# DecomPy
SER 401 Team 8- Adaptive Machine Learning Decompiler

### Prerequisites
This project is intended to run on Ubuntu 16.04
It should run in Windows Ubuntu WSL for those using Windows.
In order to run this project, you will need to install:

The following python packages:
```
numpy 1.15.3
tensorflow 1.11.0
Sphinx 1.8.1
tensorboard 1.12.0
```

and the following apt packages:
```
llvm 1:6.0-41~exp5~ubuntu1
```

It is also recommended to install the following apt packages:
```
cmake >= 3.10.2-1ubuntu2  
clang >= 1:6.0-41~exp5~ubuntu1  
gdb >= 8.1-0ubuntu3 
```

Newer versions of these packages have not been tested and are not suggested, however they may work.

Follow these steps to set up the dependencies.
```sh
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
