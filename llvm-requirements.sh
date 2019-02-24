DEB_LLVM="deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-8 main"
DEB_SRC_LLVM="deb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic-8 main"

echo "Making a copy of your source list as a precaution."
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

if grep -xq "$DEB_LLVM" /etc/apt/sources.list
then
    echo "LLVM repo already in apt sources."
else
    echo $DEB_LLVM | sudo tee -a /etc/apt/sources.list
fi

if grep -xq "$DEB_SRC_LLVM" /etc/apt/sources.list
then
    echo "LLVM source repo already in apt sources."
else
    echo $DEB_SRC_LLVM | sudo tee -a /etc/apt/sources.list
fi

sudo apt update
sudo apt install llvm-8 clang-8 lldb-8 lld-8
