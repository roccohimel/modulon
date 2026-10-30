Hello World
===========

Create a file named ``hello.mlon``. Modulon source files always use the ``.mlon`` extension.

::

   var message = "Hello from Modulon!";
   printf("%v\\n", message);

What each line does
-------------------

-  ``var message = "Hello from Modulon!";`` declares a variable. You did not write a type; the compiler infers a string from the literal, and sizes it for you.
-  ``printf("%v\\n", message);`` prints it. ``%v`` is Modulon’s automatic format: it picks the right output format for whatever type it is given, so you do not need ``%s``, ``%d`` and so on.

Compiling and running
---------------------

The commands depend on your compiler version. Compile the file with your built compiler, or run it directly with the JIT option where available. See `AOT and JIT <learn-compilation.rst>`__ and `Compiler <tools-compiler.rst>`__.
