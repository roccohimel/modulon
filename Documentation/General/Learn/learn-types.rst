Types
=====

Modulon supports the C types you already know. Its language types are consistent across supported target environments: a given type means the same thing no matter which target you compile for, which removes a class of portability surprises common in C.

Examining types
---------------

The ``typeof`` operator examines the type of a value. It is mainly useful for checking what ``var`` inferred.

::

   var x = 42;
   printf("%v\\n", typeof(x));

Printing any type
-----------------

The ``%v`` format prints a value according to its type, so changing a variable’s type does not require editing every ``printf`` that uses it. See `Input and output <learn-io.rst>`__.
