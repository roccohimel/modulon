Include, Define and Preprocessing
=================================

Modulon accepts ``include`` and ``define`` directives at the beginning of
a source line, optionally prefixed by ``#``. In this revision the
preprocessor is deliberately minimal, and is **not** a full C preprocessor.

Define
------

::

   define MAX_USERS 100
   int main() {
       var remaining = MAX_USERS - 1;
       printf("%v\n", remaining);
       return 0;
   }

A simple object-like ``define`` replaces matching identifier tokens with
its replacement text (wrapped in parentheses). Replacement avoids text
inside strings and comments. Function-style macros, conditional
compilation and recursive macro expansion are **not** implemented here.

Include
-------

::

   include <stdio.h>
   #include <stdlib.h>

These lines are recognized and **removed** during preprocessing. They do
not open or parse the named header. This is useful for compatibility with
examples that invoke known C library symbols, but it does not make
arbitrary system header declarations available. If you need a function
prototype for a Modulon function, declare it in your source.

Scope and caveats
-----------------

Macro definitions are collected per source file. The preprocessor is a
simple text transformation, not the full GNU/C preprocessor. It should
not be relied upon for complicated macro programs or feature detection.
The compiler accepts ``-I`` and ``-D`` flags for some build-system
compatibility cases, but this source revision does not implement those
flags as normal C include-path or command-line macro processing.
