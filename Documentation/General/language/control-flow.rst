Conditions and Loops
====================

If / else
---------

::

   if (score >= 70) {
       printf("Pass\n");
   } else {
       printf("Try again\n");
   }

The condition is an expression enclosed in parentheses. Braces make the
branch boundaries clear, even when a branch has one statement.

While
-----

::

   var count = 0;
   while (count < 3) {
       printf("%v\n", count);
       count++;
   }

For
---

::

   for (var i = 0; i < 5; i++) {
       printf("%v\n", i);
   }

A ``for`` initializer may be empty, an expression, a typed declaration or
``var`` with an initializer. The condition and update expressions are
optional. ``break`` exits a loop, and ``continue`` jumps to the next
iteration's update/test logic.

Switch and match
----------------

The parser also recognizes C-like ``switch``, ``case`` and ``default``.
However, the native x86-64 backend currently reports that ``switch`` is
supported only by the i386 object backend. Use an ``if`` chain or
`match <pattern-matching.rst>`__ for native programs.

The ``match`` construct is described separately because its range syntax,
guards and expression form differ significantly from a C switch.
