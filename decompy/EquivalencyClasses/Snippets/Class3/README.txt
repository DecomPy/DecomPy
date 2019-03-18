This class un-does the local_unnamed_addr opt.

Note: If we find snippet 1 in the code, we can swap it with snippet 2. We can not do the reverse.
Note: The types here could be turned into pattern to be matched, which would make this a lot more flexible
Note: Similar de-opts can be made for having a different number of parameters and different types. this could be
auto-generated. Perhaps even a Pass could be made for this