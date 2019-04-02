Using FCD
*********

++++++++++++++++++++++
Making a Module in FCD
++++++++++++++++++++++

FCD is designed to be very easy to add "optimization" passes to. Doing so requires a
very simple python script to be passed to FCD at runtime. The python script needs to
follow a simple structure. It defines a "passName" global variable which does exactly
what it sounds -- just gives a name to your "optimization" pass. It must also define
certain functions which will be called at specific times during llvm's processing.

More detailed information can be found from `this
<http://zneak.github.io/fcd/2016/02/21/csaw-wyvern.html>`_
page on FCD's GitHub.
There is also a `manual
<http://zneak.github.io/fcd/help/>`_
which provides a good deal of information

::
 
   fcd -p -n -e 0x4014b0 -e 0x401cc0 output.out > output.ll
   fcd -m --cc=x86_64/sysv -O outCustomPass.py output.ll

The above two commands were used by the author of fcd to add a custom pass. The first
command essentially just raises a specific function from a piece of code (by passing in
the virtual address) to llvm. The second performs a custom pass on the resulting llvm.

objdump can be used to detect what addresses to pass into FCD. For example, if you wish
to decompile a program starting at the main function and decompiling everything from there,
simply call fcd on the address of main from objdump. For example, the following commands
should generically be able to compile a C file named test.c and then decompile it assuming
the test.c file contains a main as it's only entry point and is not overly complicated.

::

    clang test.c -o test.out
    ./fcd -p -n -e 0x`objdump -M intel -d test.out | grep "<main>:" | sed 's/[^0-9]//g'` test.out > test.ll
    ./fcd -m -cc=x86_64/sysv -O SimpleModule.py test.ll
    
Modules in FCD directly plug into the clang/LLVM optimization pass modules. The structure is
fairly simple. You can define either a runOnFunction or a runOnModule method in the python
code. These functions will automatically be called for either every function or module in the
llvm code that fcd generates. From there, you can get instructions and modify these instructions.
The runOnFunction takes in an LLVM::Value class which represents a "Basic Block" (an LLVM term
for a section with single exit/entry). This Basic Block is a python binding for the C++ lib
for llvm and can be manipulated through llvm's api.


+++++++++++++
Pros and Cons
+++++++++++++

Pros
    * FCD seems to be the easiest choice - it is convenient to add python modules to it
      to implement the behaviour we need.

    * It is possible to target functions individually. We might be able to use this to
      perform machine learning on small sections of larger programs (increasing our data
      set)

    * It produces reasonably readable C code

Cons
    * FCD is based around Python2 modules, not Python3.

    * While the C code is fairly simple to understand - The llvm code is not. This will
      make it difficult to modify with machine learning
