Strings
=======

In C, strings are the main source of manual bookkeeping: you choose a buffer size, track lengths, and count the terminator. Modulon takes that work over. String storage is sized automatically from its contents, and the byte count is tracked for you.

::

   var greeting = "Hello";
   var target = "world";

There is no buffer length to pick and nothing to keep in sync when the text changes. Because sizing is handled by the compiler, the usual mistake of a buffer that is one byte too small does not arise in ordinary code.

Strings can be printed with ``%v`` like any other value. For lifetime and ownership, see `Memory management <learn-memory.rst>`__.
