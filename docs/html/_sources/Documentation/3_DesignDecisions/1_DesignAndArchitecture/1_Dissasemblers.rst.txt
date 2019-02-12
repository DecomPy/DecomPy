Choosing a Disassembler for DecomPy
***********************************

Descriptions of Possible Compilers
==================================

.. tabs::

   .. tab:: Capstone

      Capstone is open source (BSD), supports bindings in a huge list of languages including Python, C, and C++, and is up
      to date. It is specifically designed with dissasembling malware programs in mind and designed to handle the
      tricks that they employ. It is supported on Windows, Mac, IOS (not sure why), Android (again..,) BSD, Solaris,
      Linux. It has a full wiki and a website which will be useful for documentation.

      `Capstone's Website`__.

      `Github Repo`__.

      .. __: http://www.capstone-engine.org/

      .. __: https://github.com/aquynh/capstone

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


   .. tab:: objdump

      This is the built in linux tool for analyzing machine code files. While it is increadibly useful, it does not provide
      much besides a straight forward analysis and is not overly useful by itself. Many dissasemblers have been built on top
      of it which do further analysis to improve result and which would be better suited towards our project. It is also built
      specifically for gcc and does not do much for detecting/understanding other compilers at all.

   .. tab:: gdb

      GDB has some dissasembly tool built in, but many of them are based on objdump and are inteded for an analysis of the code, not
      for a programatic dissasembly process. Mostly, gdb is not even directly inteded for reverse engineering but more for determining
      error in the machine code for low level optimizations, despite the fact that it has many applications in direct analysis. It is
      also released under GPL which could be an annoyance, though it is easily installable on any Linux computer and we would not have
      to include it.

   .. tab:: lida interactive disassembler

      This is an interactive dissasembler which defeats most of the purpose of use. It is also built on top of libdiasm (similar to Bastard Dissasembler)
      which literally has a note saying to go use Capstone instead. Lida itself also seems out of date. It is even inteded to be used in a TK GUI.

      `Go use Capstone instead`__.

      .. __: https://code.google.com/archive/p/libdasm/

   .. tab:: dissy

      I had trouble even finding this one after seeing the name and googling it. It is hosted on google code, but there is a semi active (a year ago)
      branch that shows it is still updated. It is, like lida, interactive and likely not well suited for our project. It heavily utilizes objdump
      which from what I can tell seems to be the easy approach unlikely to get the best results. The google code site has been archived, which also
      worries me.

      `GitHub Repo`__.

      `Google code site`__.

      .. __: https://github.com/SimonKagstrom/emilpro/

      .. __: https://code.google.com/archive/p/dissy/

   .. tab:: ldasm

      Ldasm is Microsofts tool. It has the ability to be compiled for ubuntu, but it doesn't seem like this is the intent. It really likes visual studio
      which is not a good fit for this project.

      `Microsoft's docs page`__.

      .. __: https://docs.microsoft.com/en-us/dotnet/framework/tools/ildasm-exe-il-disassembler

   .. tab:: AsmDis

      `AsmDis Website`__.

      Yet another interactive dissasembler. The last update was 2016, so it also seems a little out of date, if not as much as some others.

      .. __: https://sourceforge.net/projects/asmdis/

========================  =======  ========  =======  ============  ===========  =========  ==========  ===
    Tool                  License  Language  Library  Command Line  Interactive  Good Docs  Up to date  ELF
========================  =======  ========  =======  ============  ===========  =========  ==========  ===
Capstone                    BSD    Too many     Y           Y            N           Y           Y       Y
Bastard Disassembler         ?     C/Python     Y           Y            N           N           N       Y
udis86                      BSD        C        Y           N            N           Y           Y       Y
Objconv                     GPL       CPP       N           Y            N           Y           N       Y
objdump                    many       n/a       N           Y            N           Y           Y       Y
gdb                         GPL       n/a       N           Y            Y           Y           Y       Y
lida interactive            GPL    Perl/TK      N           N            Y           N           N       Y
dissy                       GPL      C++        N           N            Y           Y           ?       Y
ldasm                     Custom      n/a       N           Y            N           Y           N       N
AsmDis                       ?        n/a       N           N            Y           N           N       Y
========================  =======  ========  =======  ============  ===========  =========  ==========  ===

Analysis of Dissasembler Options
================================

Easiest Integration
-------------------

Looking through each of the dissasemblers, there were a number of things that were considered when choosing the "easiest to integrate."
The first was that the dissasembler was not solely intended to be used through a graphical or otherwise interactive usage as this would
be difficult to simulate and impractical. The second was that it had good documentation of usage. Third, the dissasembler, if using a
library should support bindings that the current chosen languages support. Lastly, and most importantly, the dissasembler's usage should
be simple while being adaptable. In a library, this means that doing anything should not take a huge number of lines of code and that
the lines it takes should be readily apparent for any task (this overlaps good docs somewhat).

Taking into account each of these things, we can easily rule out a few. GDB, Lida, Dissy, and AsmDis were mainly intended for interactive
use and therefore not well suited for this project. The Bastard Dissasembler had very little documentation and would be difficult to
integrate because there was little information on both the library it provides/uses and the dissasembler tool itself. Objdump would also
not be a good choice because it does not output in an easily processable format and would take a lot of work to fix (essentially, many
dissasemblers use objdump and interpret it more usefully, so we would be writing a dissasembler).

This leaves:
* Capstone
* udis86
* Objconv
* ldasm

Best x86 Generation
-------------------

The next thing to take into account was the end result. We wanted to choose a dissasembler which would generate the most accurate code. This
would do two things. First, it would make the machine learning's job easier in the end. Second, it would be more accurate to the paid to use
dissasemblers we would hope our tool would be paired with.

Since it would be difficult to make the call of what dissasembler has "good enough" x86, I will simply rank the remaining dissasemblers in terms
of apparent use and support assuming that more community usage implies that the dissasembler does better.

Out of the remaining tools, the most supported are:
1. ldasm
2. Capstone
3. udis86
4. Objconv

Overall Suggestion for the Project
==================================

Out of the 4 remaining options, I believe only 2 will work. Ldasm, despite seeming to work well, does not support linux very well and only supports
the PE format. Objconv would work, but it is licensed with GPL and therefor does not fit well with the project (GPL requires projects which contain
them to be GPL license and is not good for commercially usable projects).

Therefore, my overall suggestion is Capstone, followed by udis86.

Capstone
========

Capstone has great support from its community. Currently, its github repo has 3,781 commits and counting (unlike many, it is still receiving updates).
It supports C, Clojure, F#, Common Lisp, Visual Basic, PHP, PowerShell, Emacs, Haskell, Perl, Python, Ruby, C#, NodeJS, Java, GO, C++, OCaml, Lua, Rust,
Delphi, Free Pascal & Vala, so there is no shortage in choices and C++ and Python are supported (the languages our project will mostly use). It is
distributed under BSD, the same license as our project. It supports a number of architectures, not just x86: ARM, ARM64 (ARMv8), Ethereum VM, M68K, Mips,
PPC, Sparc, SystemZ, TMS320C64X, M680X, XCore and X86 (including X86_64), which would allow our project flexibility in the future. It is also focussed
on malware dissasembly and has "[h]igh performance & [is] suitable for malware analysis (capable of handling various X86 malware tricks)." Two of the
other dissasemblers in our list had notes from their authors mentioning using this dissasember instead which shows it definitely has a following (and
156 contributors on GitHub at this time helps with that assertion). Overall this seems like the best choice.

udis86 - The runner-up
======================

udis86 is a library for x86 dissasembly written in C. This does not work with our language choices quite as well, however, it would be possible (though
more work) to write python binding (we are using CPython) for the library, and if not, we could compile a C program which does what we need and run it
through Popen in python or through similar tools in C++. It has decent documentation, and it seems to have decent support (some of the other more tool
like dissasemblers like the interactive ones used this library). Overall, it seems a bit overshadowed by Capstone, but it looks like it would do the
job.
