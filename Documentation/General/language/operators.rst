Operators and Precedence
========================

Modulon's parser implements familiar arithmetic, comparison, logical and
bitwise operators. The table is ordered from highest precedence to lowest
for **binary** operators; expressions in parentheses override this order.

+----------------+---------------------------------------+
| Category       | Operators                             |
+================+=======================================+
| Multiplicative | ``* / %``                             |
+----------------+---------------------------------------+
| Additive       | ``+ -``                               |
+----------------+---------------------------------------+
| Shift          | ``<< >>``                             |
+----------------+---------------------------------------+
| Relational     | ``< <= > >=``                         |
+----------------+---------------------------------------+
| Equality       | ``== !=``                             |
+----------------+---------------------------------------+
| Bitwise AND    | ``&``                                 |
+----------------+---------------------------------------+
| Bitwise XOR    | ``^``                                 |
+----------------+---------------------------------------+
| Bitwise OR     | ``|``                                 |
+----------------+---------------------------------------+
| Logical AND    | ``&&``                                |
+----------------+---------------------------------------+
| Logical OR     | ``||``                                |
+----------------+---------------------------------------+
| Assignment     | ``= += -= *= /= %= &= |= ^= <<= >>=`` |
+----------------+---------------------------------------+

Assignment groups right-to-left; other listed binary operators group
left-to-right. Unary ``! ~ + - & *``, pointer dereference, casts,
prefix/postfix ``++`` and ``--`` also exist.

Example::

   var passed = 1;
   var score = 84;
   if (passed && score >= 70) {
       printf("Passed\n");
   }

``&&`` and ``||`` short-circuit in the native code generator. The C
conditional operator ``?:`` and comma expression operator are not parsed
as normal general-purpose expressions by this version; avoid assuming
that a recognized punctuation token means a supported expression.

See `Expressions <expressions.rst>`__ for assignment and casts.
