Build and Run Workflow
======================

Use the compiler produced by ``make``. The executable is named ``mlonc``,
not ``modulon``, even though the help banner uses the name Modulon.

Native executable (AOT)
-----------------------

::

   ./bin/mlonc hello.mlon -o hello
   ./hello

Without ``-o``, the default output file is ``a.out``. The native output
backend is x86-64 ELF in this revision.

Run with the JIT
----------------

::

   ./bin/mlonc --jit hello.mlon

The JIT compiles the program into memory and invokes ``main``. You do not
get a separate executable to distribute. Do not combine ``--jit`` with
``-S``, ``-m32``, or ``-c``.

Inspect generated assembly
--------------------------

::

   ./bin/mlonc -S hello.mlon -o hello.s

This emits the text representation of generated x86-64 assembly. With
``-S`` and no ``-o``, the compiler writes to ``a.out`` even though its
contents are assembly text; specify ``-o`` to avoid confusion.

32-bit relocatable object
-------------------------

::

   ./bin/mlonc -m32 -c hello.mlon -o hello.o

The i386 backend emits an ELF32 relocatable object, not a complete
32-bit executable. Its supported language subset differs from the native
backend; in particular, some pattern-matching constructs are not supported.
See `i386 target <../compiler/i386.rst>`__.
