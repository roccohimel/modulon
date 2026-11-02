Ahead-of-Time (AOT) Compilation
===============================

Native AOT produces a standalone on-disk executable that can be started
without running ``mlonc`` again::

   ./bin/mlonc program.mlon -o program
   ./program

The current native backend generates x86-64 instructions and writes ELF
output directly. When a program references external C library functions,
its executable may depend on native shared libraries and an appropriate
ELF dynamic loader. "Compiled ahead of time" does not imply statically
linked or independent of the host operating system.

To inspect assembly without constructing the executable::

   ./bin/mlonc -S program.mlon -o program.s

The native code generator contains individual support paths for integer
and double operations, direct function calls, ``match`` expressions,
stack locals, imported globals, and selected library helpers. Some C
features (notably ``switch`` in this backend) are still incomplete.

Use AOT when you want to distribute or inspect a binary; use
`JIT <jit.rst>`__ when you primarily want to execute a source file during
development. Both should be tested if you expect identical behavior.
