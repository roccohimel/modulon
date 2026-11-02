The ``input`` Buffer
====================

The native code generator implements ``input(prompt)`` using a single
internal 1,024-byte buffer. It displays the prompt, reads a line with
``fgets``, removes a trailing newline if one is present, and returns a
``char *`` into that shared storage.

::

   int main() {
       var name = input("Name: ");
       printf("Hello, %v\n", name);
       return 0;
   }

**Important:** A later ``input`` call reuses this buffer. If a program
needs to remember several answers at once, copying them to separate
storage is necessary. The example ``student_manager.mlon`` uses
``strncpy`` to copy a name before another input call.

At most 1,023 input bytes fit in one read, leaving space for the NUL
terminator. A longer input line may remain partially unread in stdin.
The implementation currently does not provide a dynamically resized
input string or a distinct buffer for every call.

See `Input and output <../io/input.rst>`__ and
`Strings <../types/strings.rst>`__.
