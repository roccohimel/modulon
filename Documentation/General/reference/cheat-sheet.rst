Syntax Cheat Sheet
==================

Below is a condensed set of syntax forms and commands.

+-------------------+--------------------------------+
| Feature           | Example                        |
+===================+================================+
| Local inference   | ``var count = 1;``             |
+-------------------+--------------------------------+
| Explicit variable | ``unsigned int count = 1;``    |
+-------------------+--------------------------------+
| Global variable   | ``int total = 0;``             |
+-------------------+--------------------------------+
| String            | ``string name = "A";``         |
+-------------------+--------------------------------+
| Pointer           | ``int *ptr = &value;``         |
+-------------------+--------------------------------+
| Array             | ``int numbers[3];``            |
+-------------------+--------------------------------+
| Function          | ``int f(int x) { return x; }`` |
+-------------------+--------------------------------+
| Type comparison   | ``typeof(x) == int``           |
+-------------------+--------------------------------+
| Size              | ``sizeof(int)``                |
+-------------------+--------------------------------+
| Logical operators | ``a && b``, ``a || b``         |
+-------------------+--------------------------------+
| Match range       | ``1...10: statement;``         |
+-------------------+--------------------------------+
| Match wildcard    | ``_: statement;``              |
+-------------------+--------------------------------+
| Output            | ``printf("%v\n", value);``     |
+-------------------+--------------------------------+
| Input             | ``var x = input("Value: ");``  |
+-------------------+--------------------------------+
| Define            | ``define LIMIT 10``            |
+-------------------+--------------------------------+
| Include           | ``include <stdio.h>``          |
+-------------------+--------------------------------+
| Inline no-op      | ``asm("nop");``                |
+-------------------+--------------------------------+

Compiler commands::

   make
   ./bin/mlonc --help
   ./bin/mlonc file.mlon -o program
   ./bin/mlonc --jit file.mlon
   ./bin/mlonc -S file.mlon -o file.s
   ./bin/mlonc -m32 -c file.mlon -o file.o

Remember that ``include`` does not read C headers, ``typeof`` is not a
printable runtime string, and ``string`` is currently ``char *``. For
full context, use the linked topic indexes rather than this summary.
