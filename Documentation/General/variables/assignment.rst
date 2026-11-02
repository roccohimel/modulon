Assignments and Updates
=======================

Use ``=`` for assignment and compound operators when an old value should
be used to compute a new one.

::

   int main() {
       var count = 0;
       count = 2;
       count += 3;
       count++;
       printf("%v\n", count);
       return 0;
   }

Supported compound assignment tokens include ``+=``, ``-=``, ``*=``,
``/=``, ``%=``, ``&=``, ``|=``, ``^=``, ``<<=`` and ``>>=``. Support can
vary by expression type, so arithmetic on pointers and floating-point
values deserves extra care.

``++x`` updates before producing a value, while ``x++`` produces the old
value and then updates it. The same distinction applies to ``--``.

An address can be taken with ``&`` and assigned to a compatible pointer.
This is low-level access, not an ownership transfer: the original value
still controls the valid lifetime of that storage.

See `Operators <../language/operators.rst>`__ and
`Pointer safety <../memory/safety.rst>`__.
