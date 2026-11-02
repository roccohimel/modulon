Modulon Compared with C
=======================

Modulon keeps much of C's surface syntax, but it is not currently a
conforming C compiler. Some differences are deliberate simplifications,
while others are temporary compiler limitations.

+------------------+----------------------------+-------------------------------+
| Topic            | Typical C                  | This Modulon revision         |
+==================+============================+===============================+
| Inferred local   | Usually explicit type      | ``var`` with initializer      |
+------------------+----------------------------+-------------------------------+
| Strings          | ``char *`` / ``char[]``    | ``string`` maps to ``char *`` |
+------------------+----------------------------+-------------------------------+
| Preprocessing    | Full ``#include`` system   | Simple ``include``/``define`` |
+------------------+----------------------------+-------------------------------+
| Match ranges     | Switch/case or if chain    | ``match`` with ``...``        |
+------------------+----------------------------+-------------------------------+
| Value formatting | Explicit printf formats    | Extra ``%v`` for many types   |
+------------------+----------------------------+-------------------------------+
| Type inspection  | Limited without extensions | ``typeof`` type expressions   |
+------------------+----------------------------+-------------------------------+
| Compilation      | Toolchain/compiler driver  | Internal assembler & ELF      |
+------------------+----------------------------+-------------------------------+
| JIT              | Not a standard C mode      | ``--jit`` native execution    |
+------------------+----------------------------+-------------------------------+

The type model and object layouts still vary across supported targets.
External library calls must follow native ABI rules. Unlike a C compiler
with a full preprocessor, ``include <header>`` here cannot supply all
of a system header's declarations.

Use Modulon-specific examples and test the compiler revision. Do not
assume that arbitrary code copied from a C tutorial will compile without
changes.
