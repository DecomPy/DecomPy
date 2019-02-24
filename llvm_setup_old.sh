#!/bin/bash

if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

proc_count=$(grep -c ^processor /proc/cpuinfo)
echo Processor count: $proc_count

printf "\n\rInstalling git\n"
apt-get install git

printf "\n\rCloning LLVM project\n"
cd ~
git clone https://github.com/llvm/llvm-project.git
cd llvm-project

printf "\n\rCreating build directory\n"
mkdir build
cd build

printf "\n\rGenerating files required for building LLVM"
cmake ../llvm

printf "\n\rBuilding LLVM. THIS WILL KEEP YOUR COMPUTER BUSY FOR A WHILE\n"
cmake --build . -- -j $proc_count

printf "\n\rInstalling LLVM\n"
cmake --build . --target install

printf "\n\rLLVM installation complete. Installing another repo to test code"
cd ~
rm -r llvm-pass-skeleton
git clone https://github.com/sampsyo/llvm-pass-skeleton.git
cd llvm-pass-skeleton
git checkout containers
mkdir build
cd build
cmake ..
make
cd ..
wget https://raw.githubusercontent.com/sampsyo/llvm-pass-skeleton/mutate/example.c
clang -Xclang -load -Xclang build/skeleton/libSkeletonPass.* example.c
printf "\n\rIf the next line is \"I saw a function called main!\", the installation succeeded"
./a.out

cd ~
rm -r llvm-pass-skeleton
