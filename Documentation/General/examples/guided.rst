Guided Programs
===============

These examples are complete. Save each program in a separate ``.mlon``
file and compile it from the project root with ``./bin/mlonc``.

Example 1: A greeting
---------------------

::

   int main() {
       var name = "World";
       printf("Hello, %v!\n", name);
       return 0;
   }

``var`` infers a ``char *`` for the literal. The native ``printf``
transformer maps the ``%v`` associated with it to ``%s``.

Example 2: Reuse a function
---------------------------

::

   int twice(int value) {
       return value * 2;
   }

   int main() {
       for (var i = 1; i <= 3; i++) {
           printf("%v\n", twice(i));
       }
       return 0;
   }

This uses a typed function parameter, an inferred loop variable and
ordinary comparison/assignment operators.

Example 3: Classify values with match
-------------------------------------

::

   int main() {
       var number = 6;
       var label = match number {
           0: "zero";
           1...5: "small";
           6...10: "medium";
           _: "large";
       };
       printf("%v\n", label);
       return 0;
   }

Each expression arm uses ``;``; ranges have three dots. The wildcard is
used to cover all remaining values.

Example 4: Compare a type
-------------------------

::

   int main() {
       var value = 42;
       if (typeof(value) == int) {
           printf("An integer\n");
       }
       return 0;
   }

``typeof(value)`` is compared with a type expression. It is not passed
to ``printf`` as if it were a runtime string.

Example 5: Working with a struct
--------------------------------

::

   struct Point {
       int x;
       int y;
   };

   int main() {
       struct Point p;
       p.x = 2;
       p.y = 4;
       printf("%v %v\n", p.x, p.y);
       return 0;
   }

This demonstrates typed local storage and field access. It does not
require dynamically allocated memory.
