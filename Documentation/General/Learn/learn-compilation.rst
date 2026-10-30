AOT and JIT
===========

Modulon supports two execution models from the same source.

+---------------------+-----------------------------------------------------------------------------+---------------------------------------------------------+
| Mode                | How it works                                                                | Choose it when                                          |
+=====================+=============================================================================+=========================================================+
| AOT (ahead of time) | The compiler translates your program to a native executable before it runs. | You are shipping a program or want predictable startup. |
+---------------------+-----------------------------------------------------------------------------+---------------------------------------------------------+
| JIT (just in time)  | The program is compiled as it is run. Selected with ``--jit``.              | You are iterating quickly or scripting.                 |
+---------------------+-----------------------------------------------------------------------------+---------------------------------------------------------+

JIT is optional and exists only in compiler versions that provide it. Run your compiler’s help output to see the exact options.
