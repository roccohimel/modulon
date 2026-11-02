The Built-in Assembler
======================

For native AOT output, the compiler pipeline generates x86-64 assembly
text and invokes the repository's internal assembler rather than
launching an external assembler subprocess. The resulting image is used
to construct a native ELF executable.

Primary implementation files:

- ``src/assembler.c`` and ``include/assembler.h``: the internal assembler.
- ``src/codegen.c``: generated x86-64 assembly text.
- ``src/jit.c``: in-memory assembly and relocation for the JIT.
- ``src/i386.c``: separate 32-bit relocatable object generation.

Use ``-S`` to inspect generated text::

   ./bin/mlonc -S demo.mlon -o demo.s

A ``.s`` file from ``-S`` is informative even if no executable is
requested. Assembly syntax and supported instructions come from the
compiler's generated backend and internal assembler, not from a promise
of compatibility with arbitrary assembly programs.

See `Compiler pipeline <../compiler/pipeline.rst>`__ and
`Compiler options <../compiler/command-line.rst>`__.
