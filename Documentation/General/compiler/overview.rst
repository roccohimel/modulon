Compiler
========

This source tree builds the compiler executable ``bin/mlonc``. It parses
Modulon sources and can emit a native ELF binary, assembly text, an
i386 relocatable object or an in-process JIT execution.

- `Command-line options <command-line.rst>`__
- `Ahead-of-time compilation <aot.rst>`__
- `Just-in-time mode <jit.rst>`__
- `i386 object target <i386.rst>`__
- `Compilation stages <pipeline.rst>`__
- `Diagnostics <diagnostics.rst>`__
- `Current limitations <limitations.rst>`__

Run ``./bin/mlonc --help`` and ``--version`` to identify the compiler
that you actually built. Source revision and backend are especially
important when debugging language differences.
