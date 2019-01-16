# DecomPy
SER 401 Team 8- Adaptive Machine Learning Decompiler

### Prerequisites
* This project is intended to run on Ubuntu 16.04
* It should run in Windows Ubuntu WSL for those using Windows.
* In order to run this project, it is highly recommended to create a virtual environment, either through `Anaconda` or `python3 virtualenv`.
* You must have Python3.6 installed as your environment.

#### Python3 Environment
If you're using `python3 virtualenv` with python3.6, you can do the following in the **DecomPy root directory**:
```
virtualenv -p python3.6 venv_decompy
source venv_decompy/bin/activate
pip install -r requirements.txt
```
As always, to remove the virtualenv, you can `deactivate` if you're in the environment then `rm -r venv_decompy/`

Another option is an Anaconda environment if you prefer that over Virtualenv.
#### Anaconda Environment
If you're using `Anaconda` (must be in path environment variables), it is recommended to follow these steps:
* Install Anaconda (skip this part if you already have it installed)

```
cd /tmp
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
sha256sum Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
```
More info can be found at: https://www.digitalocean.com/community/tutorials/how-to-install-the-anaconda-python-distribution-on-ubuntu-16-04
and https://conda.io/docs/user-guide/install/linux.html#install-linux-silent

* Create an Anaconda Environment

```
conda create -n conda_decompy python=3.6.7 anaconda
source activate conda_decompy
pip install -r requirements.txt
```
If you prefer a more anaconda way to install you can do
`while read requirement; do conda install --yes $requirement; done < requirements.txt` instead of `pip install -r requirements.txt`

To activate: `source activate conda_decompy` and to deactivate use `source deactivate`

As always, to remove the environment, you can do `conda env remove --name conda_decompy`
to remove the environment.



#### Ubuntu 16.04 dependency installation
apt packages:
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
```
