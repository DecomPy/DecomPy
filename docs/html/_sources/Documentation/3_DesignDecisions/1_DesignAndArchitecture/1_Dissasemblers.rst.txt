Choosing a Disassembler for DecomPy
***********************************

.. tabs::

   .. tab:: Bastard Disassembler / libdiasm

      The Bastard Disassembler is a disassembler built for Linux / FreeBSD. It provides a library (libdiasm) which
      is intended to be used programmatically. It is written in C, but appears to have a python binding. There is poor
      documentation and it is difficult to find much on the usage. It also appears to be inactive.

      `libdiasm Website`__.

      `Bastard Disassembler Website`__.

      .. __: http://bastard.sourceforge.net/libdisasm.html

      .. __: http://bastard.sourceforge.net/

   .. tab:: udis86

      Open source (2-clause BSD) C library for x86 and x86_64 dissasembly. It doesn't appear to have the best
      documentation, but it is at least present and usage seems simple, especially for what we would need to start.
      It does handle ELF files.

      `udis86 Website`__.

      .. __: http://udis86.sourceforge.net/

   .. tab:: Objconv

      Supports Windows, 32 and 64 bit x86, Linux, 32 and 64 bit x86, BSD, 32 and 64 bit x86 and Mac OS X, 32 and 64 bit
      x86 (Darwin, Intel based). The docs actually say that the tool is "only intended for experts" and "not to send
      your programming questions to" the author as he will flat out ignore you. It seems to have a decent and simple
      command line interface and seems more like something we would invoke then to actually use as a library. It uses
      the GPL license though, so likely this crosses it off of our lists. It also seems to have no maintained repo
      and is basically just a zip from this website. It is written in CPP from glancing at the source files.

      `Paper on objconv from author`__.

      .. __: https://www.agner.org/optimize/objconv-instructions.pdf

   .. tab:: ciasdis

      empty

   .. tab:: objdump

      empty

   .. tab:: gdb

      empty

   .. tab:: lida linux interactive disassembler

      empty

   .. tab:: dissy

      empty

   .. tab:: ldasm

      empty

   .. tab:: AsmDis

      `AsmDis Website`__.

      .. __: https://sourceforge.net/projects/asmdis/

========================  =======  ========  =======  ============  =========  ==========
    Tool                  License  Language  Library  Command Line  Good Docs  Up to date
========================  =======  ========  =======  ============  =========  ==========
Bastard Disassembler         ?     C/Python     Y           Y           N           N
udis86                      BSD        C        Y           N           Y           Y
Objconv                     GPL       CPP       N           Y           Y           N
========================  =======  ========  =======  ============  =========  ==========