
	In this directory, a c file with if-else statements is being compared
	to a c file with switch case statements. The results should be identical.

	Use the commands below to convert the c codes to llvm codes.

		clang -S -emit-llvm 17.c

		clang -S -emit-llvm 18.c