Input and Output
================

Modulon can call familiar C library I/O functions, and adds ``%v`` to
``printf`` calls plus a built-in ``input`` helper.

- `Formatted output <formatted-output.rst>`__
- `Prompted input <input.rst>`__
- `Library calls and headers <libraries.rst>`__

These helpers are convenient for terminal programs, but are not a full
standard library of their own. They depend on the native target's runtime
and library symbols. Freestanding object generation differs.
