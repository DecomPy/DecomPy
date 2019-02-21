LLVM Versions
*************

Another large issue is the hugely variable nature of llvm versions. LLVM tends
to break quite a bit in updates (think python2 vs python3 except worse for those
familiar). Because of this, the version of clang that is used to generate llvm
must be very specific. If it is a different version, it will contain things which
a decompiler written for another version will not be able to process. This is 
especially difficult to deal with since the compiler and the llvm lifter might
work with different versions which, to the best of my knowledge has no fix. To
get this project to work, both the llvm lifter and the c lifter (c decompiler)
we use have to work with the same exact version of llvm. Even the difference from
3.9 to 4.0 seems to have the ability to break things irreperably.
