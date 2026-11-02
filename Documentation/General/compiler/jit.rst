Just-in-Time (JIT) Compilation
==============================

The JIT compiles the parsed program to a memory-resident native image,
resolves necessary symbols against the running compiler process, and calls
its ``main`` function directly.

::

   ./bin/mlonc --jit program.mlon

No separately named executable is produced. The CLI passes source-file
arguments to the JIT entrypoint and exits with the integer value returned
by ``main``.

Implementation details
----------------------

``src/jit.c`` uses native facilities such as ``mmap``, ``mprotect`` and
``dlsym`` for executable memory and symbol lookup. The JIT therefore
requires a suitable POSIX-like x86-64 environment and available external
symbols. It is not a portable interpreter for all platforms.

Limits and troubleshooting
--------------------------

- Do not combine JIT with ``-S``, ``-c`` or ``-m32``.
- The compiled code is native; memory errors in the program can still
  crash the process.
- AOT and JIT have different loading and initialization paths. Check
  globals and external symbols when code works in one mode but not another.
- No external native executable appears after the JIT finishes.

See `Troubleshooting <../reference/troubleshooting.rst>`__.
