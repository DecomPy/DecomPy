
	In this directory, two different if-else statements are being compared.
	In particular, the inequalities in the if-else statements are being
	compared (a == b) vs (a != b). The results should be identical.

	Use the commands below to convert the c codes to llvm codes.

		clang -S -emit-llvm 5.c

		clang -S -emit-llvm 6.c