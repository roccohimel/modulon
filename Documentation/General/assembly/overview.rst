Assembler and Low-Level Code
============================

Modulon contains an internal assembler used for native code generation,
plus syntax for inline assembly statements.

- `Inline assembly <inline.rst>`__: syntax and current support
- `Internal assembler <internal.rst>`__: its role in the compiler pipeline

The implementation is not a general replacement for GNU as or NASM.
Actual instruction acceptance depends on the particular frontend and
backend. See the limitations before putting assembly into portable code.
