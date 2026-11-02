Pointers and Arrays
===================

Pointer declarations use ``*`` and indexing uses ``[]``::

   int main() {
       int values[3];
       values[0] = 10;
       values[1] = 20;
       values[2] = 30;
       int *first = &values[0];
       printf("%v\n", values[1]);
       printf("%v\n", *first);
       return 0;
   }

An array has a base type and element count. The compiler can infer a
``char`` array's omitted size from a string initializer. The parser also
accepts identifier-based array bounds in some contexts, but variable
length arrays and stack-layout operations are backend-dependent.

For pointers, ``&`` obtains an address and ``*`` dereferences it.
Pointer arithmetic depends on the size of the pointed-to type. In
particular, incrementing an ``int *`` is not the same as incrementing a
``char *``.

Memory safety remains the programmer's responsibility. Neither fixed
arrays nor pointers are guaranteed to have runtime bounds checks. An
uninitialized pointer is not automatically made valid by the compiler.

Read `Memory and ownership <../memory/model.rst>`__ before passing
pointers to library code.
