Parameters and Return Values
============================

Parameters have explicit types; ``var`` is for local variable declarations,
not parameter types::

   int add(int left, int right) {
       return left + right;
   }

   int main() {
       var result = add(2, 3);
       printf("%v\n", result);
       return 0;
   }

The compiler supports pointer parameters and some array parameter forms.
An array parameter is treated as a pointer-like parameter; it is not a
copy of the whole array.

A ``return`` statement ends execution of the current function. For a
``void`` function, ``return;`` has no expression. The native backend
handles integer and double return paths separately.

Variadic declarations using ``...`` are recognized. The native code
generator also has special handling for ``va_start`` and ``va_end``, but
this is not a full guarantee of complete C varargs compatibility. Test
variadic interfaces under both compilation modes before relying on them.

If a function is intended to operate on raw pointers, document whether
its arguments may be null and how long referenced memory must remain valid.
