Formatted Output with ``printf``
================================

The native compiler has special handling for literal ``printf`` format
strings containing ``%v``. It looks at the corresponding argument type
and substitutes a C-style format before generating the call.

::

   int main() {
       var count = 12;
       var name = "example";
       printf("%v items in %v\n", count, name);
       return 0;
   }

Mappings include integers to ``%d`` or width-appropriate integer formats,
``double`` to ``%f``, ``char *`` to ``%s``, and other pointers to ``%p``.
Not every type has a ``%v`` mapping. For example, passing a structure
as one argument is not automatically printable.

Use conventional ``printf`` format conversions such as ``%d``, ``%s``,
``%.2f`` or ``%%`` when you need precise formatting. The ``%v`` feature
is handled only when the format argument is a string literal in the
compiler's current implementation; a dynamic format string is not
rewritten the same way.

``%v`` is a compiler transformation, not a feature provided by a system
``printf`` at runtime. Keep format arguments in the same order as their
corresponding conversion specifiers and do not pass arbitrary types with
incompatible C formats.
