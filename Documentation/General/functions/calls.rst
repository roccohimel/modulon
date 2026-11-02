Calls, Prototypes and External Symbols
======================================

A prototype declares a function before its body is available::

   int double_it(int value);

   int main() {
       printf("%v\n", double_it(7));
       return 0;
   }

   int double_it(int value) {
       return value * 2;
   }

The parser can process several ``.mlon`` files passed on one compiler
command line. An external symbol may also be used by name, with the
native output's ELF import mechanism resolving supported functions from
shared libraries.

::

   ./bin/mlonc part1.mlon part2.mlon -o combined

For a function whose return type matters, declare its prototype instead
of assuming the compiler can infer the ABI from an undeclared name.
The native backend's direct-call generator currently accepts calls
through a named function identifier; indirect function-pointer calls
are not implemented in the same way as full C.

To explicitly include a native dependency in the generated ELF dynamic
metadata, use ``-lNAME`` (for example ``-lm``). This option is relevant
to native AOT output; it does not mean arbitrary library headers have
been parsed. Read `Libraries <../io/libraries.rst>`__.
