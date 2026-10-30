Operators
=========

Modulon uses C-style operators, so arithmetic, comparison and assignment work as in C. It also provides the logical operators ``&&`` (AND) and ``||`` (OR).

::

   if (age >= 18 && age < 65) {
       printf("%v\\n", "working age");
   }

``&&`` is true only when both sides are true; ``||`` is true when either side is. As in C, evaluation stops as soon as the result is known.
