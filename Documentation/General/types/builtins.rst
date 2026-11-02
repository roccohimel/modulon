Built-in and Named Types
========================

The parser recognizes the following common spellings:

- Integers: ``char``, ``short``, ``int``, ``long``, ``long long`` and
  their ``signed`` and ``unsigned`` forms.
- Floating-point: ``float``, ``double`` and ``long double``.
- Boolean: ``bool`` and ``_Bool``.
- Special types: ``void``, ``string`` and ``struct``.
- Fixed-width family: ``int8_t`` through ``int64_t`` and ``uint8_t``
  through ``uint64_t``, plus several ``int_least*`` and ``int_fast*`` names.
- Common system names: ``size_t``, ``ssize_t``, ``ptrdiff_t``, ``intptr_t``
  and ``uintptr_t``; some ``FILE``, X11 and ``va_list`` spellings are also
  recognized by the parser.

Examples::

   int counter = 10;
   unsigned int flags = 255;
   double fraction = 1.5;
   char code = 'A';
   bool enabled = 1;

``string`` is currently an alias-like syntax for ``char *`` rather than
an independent managed container. The parser accepts ``const``,
``volatile`` and ``restrict`` tokens before types but does not enforce all
of C's type-qualifier semantics; do not assume C11 equivalence.

Some type names are recognized by the parser for compatibility, without
importing their real C header definitions. This is not a complete C type
system, and floating-point operations have backend-specific limitations.
