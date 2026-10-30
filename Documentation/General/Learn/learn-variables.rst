Variables
=========

Variables are declared with the ``var`` keyword. The compiler determines the type from the initializer, so you state the value once rather than the type and the value.

::

   var count = 10;
   var name = "Modulon";

Here ``count`` is an integer and ``name`` is a string. The type is fixed at compile time. Inference changes how much you write, not how the program behaves, and the type is still checked by the compiler.

When to write the type yourself
-------------------------------

Modulon supports the familiar C types, so you can still declare a type explicitly when you want a particular width or representation. Inference suits local values whose type is obvious from the right-hand side. Use an explicit type where the exact type is part of the meaning.

To see what the compiler decided, use ``typeof``; see `Types <learn-types.rst>`__.
