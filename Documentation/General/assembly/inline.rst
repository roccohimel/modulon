Inline Assembly
===============

The parser recognizes ``asm`` and ``__asm__`` with a quoted instruction
string, including an optional ``volatile`` marker::

   int main() {
       asm("nop");
       return 0;
   }

The **native x86-64 code generator** deliberately accepts only the
following no-operand strings in its direct inline-assembly statement path:

``hlt``, ``cli``, ``sti``, ``nop``, ``cld``, ``std``, ``int3``,
``pause``, ``ud2``.

Some of these instructions are privileged or otherwise unsafe in normal
user-space execution; the harmless ``nop`` is sufficient to demonstrate
the syntax. The parser contains experimental support for output
constraints, but ordinary inputs and a general clobber list are **not**
implemented in the same way as GNU inline assembly. Do not assume a
multi-instruction GCC ``asm`` block is supported.

Because inline assembly is target-specific, keep it out of general
examples unless the platform and backend are explicit. The internal
assembler can accept more instructions when assembling compiler-generated
output, but that does not expand the inline-statement whitelist.
