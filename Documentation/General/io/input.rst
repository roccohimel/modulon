Prompted Input
==============

The built-in expression ``input(prompt)`` prints a prompt and returns
characters entered by the user as a pointer to a NUL-terminated buffer.

::

   int main() {
       var city = input("City: ");
       printf("You entered: %v\n", city);
       return 0;
   }

The prompt must be a suitable string expression. The input result is a
``char *``, even if the characters are digits. Convert them explicitly
when you need an integer, as illustrated by the project example:

::

   var age = atoi(input("Age: "));

This makes use of a native library conversion function; it is not an
implicit type conversion performed by ``input``.

In the current native code generator ``input`` uses a single fixed
1,024-byte buffer. Subsequent calls overwrite its old contents.
``input`` is not suitable for arbitrarily long lines without adapting
the implementation. The current code also does not expose a rich error
result for end-of-file. See `Input buffer <../memory/input-buffer.rst>`__.
