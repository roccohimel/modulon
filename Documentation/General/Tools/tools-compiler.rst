Compiler
========

The compiler takes ``.mlon`` source files and produces a native program (AOT), or with ``--jit``, compiles and runs the program directly in compiler versions that provide it. Its source is in ``src/`` with headers in ``include/``.

Options
-------

The complete command syntax depends on the version you built. Print the compiler’s help output to see every option; that output is authoritative for your build.

Diagnostics
-----------

The project aims for useful diagnostics and predictable compilation behavior. If an error message is unclear or wrong, please report it as described in `Contributing <contributing.rst>`__.
