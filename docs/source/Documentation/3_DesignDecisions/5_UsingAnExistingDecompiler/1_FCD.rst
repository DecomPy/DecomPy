Making a Module in FCD
**********************

FCD is designed to be very easy to add "optimization" passes to. Doing so requires a
very simple python script to be passed to FCD at runtime. The python script needs to
follow a simple structure. It defines a "passName" global variable which does exactly
what it sounds -- just gives a name to your "optimization" pass. It must also define
certain functions which will be called at specific times during llvm's processing.

More detailed information can be found from `this
<http://zneak.github.io/fcd/2016/02/21/csaw-wyvern.html>`
page on FCD's GitHub.
There is also a `manual
<http://zneak.github.io/fcd/help/>`
which provides a good deal of information

::
 
   fcd -p -n -e 0x4014b0 -e 0x401cc0 output.out > output.ll
   fcd -m --cc=x86_64/sysv -O outCustomPass.py output.ll

The above two commands were used by the author of fcd to add a custom pass. The first
command essentially just raises a specific function from a piece of code (by passing in
the virtual address) to llvm. The second performs a custom pass on the resulting llvm.
