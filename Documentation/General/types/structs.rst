Structures and Type Aliases
===========================

Use ``struct`` to group related fields::

   struct Point {
       int x;
       int y;
   };

   int main() {
       struct Point origin;
       origin.x = 0;
       origin.y = 0;
       printf("%v\n", origin.x);
       return 0;
   }

Field access uses a period for a value or ``->`` for a pointer to a
structure. The parser computes member offsets and overall structure size,
including alignment. An optional ``__attribute__((packed))`` spelling
can request a packed layout.

A basic typedef names an existing type::

   typedef unsigned int Counter;

   int main() {
       Counter n = 3;
       printf("%v\n", n);
       return 0;
   }

This compiler currently supports simple typedef declarations; it does
not support function typedefs. As with C, structure layout depends on the
ABI and member types. Do not assume a packed layout is safe for all
hardware accesses, and do not expect arbitrarily complex C declarators
(e.g., function-pointer typedefs) to parse.
