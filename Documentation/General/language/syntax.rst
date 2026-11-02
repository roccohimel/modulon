Source Files and Syntax
=======================

Modulon files normally use ``.mlon``. Whitespace and indentation separate
tokens for readability; blocks use ``{`` and ``}``, and declarations and
simple statements end with ``;``. Identifiers begin with an ASCII letter
or underscore and continue with letters, digits or underscores.

A complete program can look like this::

   define START 1

   int main() {
       var counter = START;
       if (counter > 0) {
           printf("counter = %v\n", counter);
       }
       return 0;
   }

Function definitions and explicitly typed globals live at file scope.
``var`` is currently parsed as a **local** declaration within a function,
not as a top-level global. Global declarations use an explicit type.

Source files are individually preprocessed and parsed, then accumulated
into one program when several filenames are passed to ``mlonc``. Header
``include`` lines do not bring in declarations from disk. If a program
uses external library functions, it relies on the compiler's handling of
those names, not on C header parsing.

Modulon resembles C, but is not a drop-in C compiler. A familiar C feature
may be missing from one backend even if the lexer recognizes its tokens.
Always test a construct with the exact version and backend you plan to use.
