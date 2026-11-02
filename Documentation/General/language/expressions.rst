Expressions, Access and Casts
=============================

An expression produces a value or modifies storage. Modulon supports
ordinary variable references, calls, array indexing, struct members,
pointer operations and arithmetic.

::

   int main() {
       var first = 10;
       var second = 5;
       var sum = first + second;
       sum += 2;
       printf("%v\n", sum);
       return 0;
   }

Lvalues and assignment
----------------------

An assignment target must identify writable storage, such as a local
variable, an array element or a struct field. ``=`` sets a value and
compound assignments update an existing value. ``++`` and ``--`` can be
used before or after a variable.

Pointer operators
-----------------

``&variable`` takes an address. ``*pointer`` dereferences a pointer.
``array[index]`` indexes an array or a pointer. ``record.member`` accesses
a struct field; ``pointer->member`` accesses through a struct pointer.

Casts and sizes
---------------

::

   int main() {
       var number = 3;
       double precise = (double)number;
       var bytes = sizeof(int);
       printf("%v\n", bytes);
       return 0;
   }

The parser supports C-style ``(type)expression`` casts and
``sizeof(type)`` / ``sizeof(expression)``. ``typeof`` is a *type expression*,
not a printable runtime object. See `Type inspection <../types/inspection.rst>`__.

Backend warning
---------------

The parser accepts more forms than every code generator implements.
Unsupported expressions may fail during code generation with a fatal
compiler diagnostic. This is a compiler limitation, not an alternative
syntax that the documentation can assume works.
