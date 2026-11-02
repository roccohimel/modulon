C Libraries and Header Limitations
==================================

Native x86-64 output can import external symbols and call library
functions. This is why programs in the examples use functions like
``printf``, ``atoi``, ``strcmp`` or ``strncpy``.

A line such as ``include <stdio.h>`` is currently *not* equivalent to
running a C preprocessor over the real header. The Modulon preprocessor
strips that line. Some library names are handled specially, while other
external calls rely on the target's ABI and symbol resolver.

If the return type is not a simple machine integer or pointer, an explicit
prototype is usually necessary to communicate that to the compiler.
Ensure argument types match the native function's real calling convention.

``-lNAME`` can add a DT_NEEDED shared-library dependency to native ELF
output. It is not an instruction to parse headers or a generic C build
pipeline. JIT symbol resolution uses the current process's available
symbols, which can differ from the ELF AOT loader's library selection.

These details make foreign-function calls useful but lower-level than
normal C compilation with full headers. Consult
`Directives <../language/directives.rst>`__ and
`Compiler options <../compiler/command-line.rst>`__.
