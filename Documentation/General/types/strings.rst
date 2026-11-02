Strings and Character Data
==========================

A Modulon ``string`` is currently represented as ``char *``. A string
literal is stored as a sequence of bytes followed by a NUL terminator.

::

   int main() {
       string greeting = "Hello";
       var target = "world";
       printf("%v, %v!\n", greeting, target);
       return 0;
   }

The compiler stores a literal with the space it needs, but this does not
mean that arbitrary string concatenation, growth, duplication or dynamic
heap management occurs automatically. In particular, ``string`` is not a
C++-style resizable container.

``%v`` maps a ``char *`` to ``%s`` for formatted output. Indexing a
string, such as ``greeting[0]``, accesses one character byte. C-style
string library calls may be usable through external symbols, but you
must manage writable capacity and source/destination lifetimes yourself.

``input(prompt)`` returns a pointer to a shared fixed-size buffer.
Save a separate copy if you need the old input after a second call; see
`Input buffers <../memory/input-buffer.rst>`__.
