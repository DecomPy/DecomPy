How Does MergeConstants Word?
*****************************

The ConstantMerge class has method ``mergeConstants`` that finds duplicate global constants and merges them together. The method has one parameter, a
``Module``. The first step is to find globals that are marked ``used`` or ``compiler.used``, because they cannot be merged for some reason. A description of
what ``used`` means
can be found here: https://llvm.org/docs/LangRef.html#the-llvm-used-global-variable.

After marking the globals that can't be merged, a ``global_iterator`` goes through globals and removes them if they are dead, skips them if they are
unmergeable or ``isWeakForLinker`` or certain types of metadata,  checks if the global's initializer is known, and then makes some simple replacements.

A second ``global_iterator`` does the same thing as the previous one, but instead of making simple replacements, makes all uses of duplicate constants use
their canonical version. Information about canonical types can be found here: https://clang.llvm.org/docs/InternalsManual.html#canonical-types. From what I
can tell, it has to do with structural similarities of data types.

After the second ``global_iterator`` loop does its work, all the duplicate canonized globals are merged together.

The entire above process loops until no further changes are made.