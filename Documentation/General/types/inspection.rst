``typeof`` and ``sizeof``
========================

``sizeof`` evaluates storage size in bytes at compile time for supported
types and expressions::

   int main() {
       var bytes = sizeof(int);
       printf("%v\n", bytes);
       return 0;
   }

``typeof`` is used in **type comparisons** and type contexts. It is not a
runtime object containing a printable type name::

   int main() {
       var score = 42;
       if (typeof(score) == int) {
           printf("score has type int\n");
       }
       return 0;
   }

The code generator handles equality and inequality when both operands
represent types. The following is **not** a supported way to print a type::

   printf("%v\n", typeof(score));

That code attempts to pass a type expression as a runtime value and fails
in this revision. If you need programmatically generated type names,
that would require a new compiler feature rather than ``%v`` alone.

Note that ``sizeof(pointer)`` reports pointer size, not the size of the
allocation it points to. See `Target layout <portability.rst>`__.
