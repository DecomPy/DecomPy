
	In this directory, the two different for-loops are being compared.
	In particular, the inequalities in the declaration of the for-loops 
        are being compared (int i = 1; i <= a; i++) vs (int i = 0; i < a; i++).
 	The results should be identical.

	Use the commands below to convert the c codes to llvm codes.

		clang -S -emit-llvm 15.c

		clang -S -emit-llvm 16.c