Input and output
================

Output
------

``printf`` prints formatted text. Besides the C-style specifiers, Modulon adds ``%v``, which formats a value automatically based on its type.

::

   var n = 7;
   var s = "seven";
   printf("%v is %v\\n", n, s);

Input
-----

``input`` reads a line from the user and takes a prompt, so you do not need a separate print before reading. The value is stored in a variable like any other.

Both features exist to remove the formatting and buffer handling that make small interactive programs long in C.
