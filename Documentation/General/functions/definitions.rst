Function Definitions
====================

A function definition has a return type, name, parameter list and body::

   int square(int value) {
       return value * value;
   }

   int main() {
       printf("%v\n", square(6));
       return 0;
   }

The parser understands return types such as ``void``, ``int`` and
``double``, plus pointers and other named types. A function with no
parameters can use ``()`` or ``(void)``.

Use ``void`` for a function that does not return a value::

   void show_message(void) {
       printf("Ready\n");
   }

The compiler accepts ``static`` and ``inline`` on function declarations
and definitions, but do not assume their optimization behavior is identical
to a mature C toolchain. Functions are defined at file scope, not inside
other functions.

For consistent behavior, write a ``return`` for non-void functions, and
keep the declared result type aligned with the expression actually returned.
