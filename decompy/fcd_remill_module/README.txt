
To run the program, type the following commands to the terminal in the fcd_remill directory:

	export LD_LIBRARY_PATH=.
	echo $LD_LIBRARY_PATH

	./fcd-4.0 --help

	./runModule.sh

For Clang:

	To compile to 64 bit: clang -m64 test.c -o test

	To compile to 32 bit: clang -m32 test.c -o test

	To run: ./test


Error that stopped the module from being run: 

	Cannot find path to x86 semantics bitcode file.
	
	The error is related to Remill; McSema support is very limited.


For compiling 32-bit program on 64-bit gcc in c, follow the following site:

	https://www.geeksforgeeks.org/compile-32-bit-program-64-bit-gcc-c-c/