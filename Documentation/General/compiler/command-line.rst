Command-Line Interface
======================

Command format::

   ./bin/mlonc [options] file.mlon [more_files.mlon ...]

Options implemented by ``src/main.c`` in this archive:

+--------------------+-------------------------------------------------+
| Option             | Meaning                                         |
+====================+=================================================+
| ``-o FILE``        | Set the output file name.                       |
+--------------------+-------------------------------------------------+
| ``-S``             | Output generated x86-64 assembly text.          |
+--------------------+-------------------------------------------------+
| ``-m32 -c``        | Emit ELF32 i386 relocatable object code.        |
+--------------------+-------------------------------------------------+
| ``--jit``          | Compile and execute ``main`` in this process.   |
+--------------------+-------------------------------------------------+
| ``-ffreestanding`` | Accepted for freestanding build compatibility.  |
+--------------------+-------------------------------------------------+
| ``-lNAME``         | Add an ELF DT_NEEDED native library dependency. |
+--------------------+-------------------------------------------------+
| ``--version``      | Show the compiler's version.                    |
+--------------------+-------------------------------------------------+
| ``--help``/``-h``  | Show command-line usage.                        |
+--------------------+-------------------------------------------------+

The default output filename is ``a.out``. Using an output name ending in
``.o`` implicitly selects the 32-bit relocatable-object path in this
revision. The parser also accepts several GCC-like flags (such as
``-O*``, ``-Wall``, ``-I*``, ``-D*``, ``-std=*``) for compatibility, but
does not implement their standard GCC behavior. In particular, there is
no documented optimization-level selection for ``-O``.

Examples::

   ./bin/mlonc demo.mlon -o demo
   ./bin/mlonc --jit demo.mlon
   ./bin/mlonc -S demo.mlon -o demo.s
   ./bin/mlonc -m32 -c kernel.mlon -o kernel.o

Do not combine ``--jit`` with ``-S``, ``-c`` or ``-m32``; the compiler
explicitly rejects those combinations. ``-m32`` by itself also fails:
the current implementation requires ``-c`` for that target.
