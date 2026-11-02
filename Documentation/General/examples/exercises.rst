Practice Exercises
==================

These exercises are intended for the native x86-64 backend. Work from
small programs and compile after each change.

1. **Counter:** Print the numbers 1 through 10 using ``for``. Change it
   to ``while``, then compare the output.
2. **Temperature label:** Use ``match`` to classify an integer into three
   ranges, with ``_`` for other values.
3. **Type checks:** Declare variables with ``var`` and compare their
   ``typeof`` results to explicit types. Try both a string and an integer.
4. **Functions:** Write ``int max_of_two(int a, int b)`` and call it from
   ``main``. Then use it to compare two input numbers after conversion.
5. **Arrays:** Initialize an integer array with five entries and write a
   function that returns the sum. Be careful not to index past the end.
6. **Structs:** Define a point with ``x`` and ``y`` fields. Write a
   function to add two coordinate pairs and print the result.
7. **Compiler modes:** Compile the same small program with AOT and JIT,
   and compare output. Emit ``-S`` assembly and find its function label.
8. **Error diagnosis:** Remove a semicolon from a temporary example,
   observe the diagnostic, then restore the correct syntax.

For independent verification, keep examples in separate ``.mlon`` files.
If a task fails because of a known backend restriction, see
`Limitations <../compiler/limitations.rst>`__ rather than silently
changing the intended language rules.
