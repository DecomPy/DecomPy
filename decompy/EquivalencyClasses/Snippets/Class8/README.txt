
	In this directory, the two different iterators are being compared.
	In particular, the outcome of the for-loop is being compared to the
	outcome of the while loop. The results should be identical.

	Use the commands below to convert the c codes to llvm codes.

		clang -S -emit-llvm Class7.c

		clang -S -emit-llvm Class8.c