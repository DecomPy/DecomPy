#!/bin/bash

proc_count=$(grep -c ^processor /proc/cpuinfo)
echo Processor count: $proc_count

printf "\nInstalling git\n"
sudo apt-get install git

printf "\nCloning LLVM project\n"
cd ~
git clone https://github.com/llvm/llvm-project.git
cd llvm-project

printf "\nCreating build directory\n"
mkdir build
cd build

printf "\nGenerating files required for building LLVM"
cmake ../llvm

printf "\nBuilding LLVM. THIS WILL KEEP YOUR COMPUTER BUSY FOR A WHILE\n"
cmake --build . -- -j \[$proc_count\]

printf "\nInstalling LLVM\n"
cmake --build . --target install

printf "\nLLVM installation complete. Installing another repo to test code"
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
printf "\n \e[7If the next line is \"I saw a function called main!\", the installation succeeded"
./a.out

cd ..
rm -r llvm-pass-skeleton
