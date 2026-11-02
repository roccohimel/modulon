Declaring Variables
===================

You can write a complete type, as in C, or use ``var`` with an initializer.

::

   int global_count = 0;

   int main() {
       int limit = 10;
       var current = 1;
       string message = "Starting";
       printf("%v\n", message);
       return 0;
   }

An explicit type documents ABI-sensitive values or storage widths.
``var`` is convenient where the initializer makes the type obvious.
``var`` cannot be declared without an initial value.

Use explicit types at global scope. The parser in this archive expects a
named type there and does not accept ``var`` as a global declaration.

Several explicitly typed locals can share a declaration, for example
``int a = 1, b = 2;``. The compiler's simple local-symbol collection
may reject reused names across nested blocks; see `Scope <scope.rst>`__.

Related pages: `Type inference <../types/inference.rst>`__ and
`Initialization <initialization.rst>`__.
