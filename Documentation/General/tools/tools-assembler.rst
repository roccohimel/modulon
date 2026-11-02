Assembler Tooling
=================

The assembler in ``src/assembler.c`` is a compiler component, not a
separate ``as`` executable supplied by this Makefile. The native
x86-64 code generator emits text that the internal assembler translates
into a program image.

Generate text output with::

   ./bin/mlonc -S program.mlon -o program.s

The inline ``asm`` language feature is a separate interface with a
limited instruction set. See `Inline assembly <../assembly/inline.rst>`__
and `Internal assembler <../assembly/internal.rst>`__.
