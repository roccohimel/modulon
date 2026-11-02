Hello World
===========

Create a file called ``hello.mlon``::

   include <stdio.h>

   int main() {
       var message = "Hello from Modulon!";
       printf("%v\n", message);
       return 0;
   }

The file has a normal ``main`` function. A local variable introduced by
``var`` takes its type from the string literal. ``printf`` accepts the
compiler's ``%v`` conversion for automatically choosing a format for that
value. The ``include`` directive is accepted, but does *not* import a C
header's contents: see `Directives <../language/directives.rst>`__.

From the project root, compile and run::

   ./bin/mlonc hello.mlon -o hello
   ./hello

Or use the in-process JIT::

   ./bin/mlonc --jit hello.mlon

Both commands should print ``Hello from Modulon!`` on a compatible host.
The JIT returns the integer result of ``main`` to the shell.

For next steps, see `Variables <../variables/declarations.rst>`__,
`Input and output <../io/overview.rst>`__ and `Build workflow <workflow.rst>`__.
