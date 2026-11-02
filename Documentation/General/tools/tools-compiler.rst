The ``mlonc`` Compiler
======================

The project Makefile creates ``bin/mlonc``. It takes one or more ``.mlon``
source files and selects an output mode from command-line options.

::

   ./bin/mlonc --help
   ./bin/mlonc --version
   ./bin/mlonc program.mlon -o program
   ./bin/mlonc --jit program.mlon

For the full option table, supported combinations and output behavior,
see `Command-line interface <../compiler/command-line.rst>`__. For the
underlying architecture, see `Compiler pipeline <../compiler/pipeline.rst>`__.
