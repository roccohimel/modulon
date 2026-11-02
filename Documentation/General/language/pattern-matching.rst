Pattern Matching
================

``match`` selects the first arm whose pattern matches a subject. It has
**statement** and **expression** forms. Patterns include literal values,
inclusive ranges, a list of alternatives, and a final wildcard.

Statement form
--------------

::

   int main() {
       var score = 85;
       match score {
           0...59: printf("F\n");
           60...69: printf("D\n");
           70...79: printf("C\n");
           80...89: printf("B\n");
           90...100: printf("A\n");
           _: printf("Out of range\n");
       }
       return 0;
   }

Use **three dots** (``...``) for an inclusive range in this revision.
A file in ``examples/`` may use two dots from an earlier syntax; the parser
currently expects three. Each statement arm has a colon followed by one
statement (which can be a braced block).

Expression form
---------------

::

   var category = match score {
       0...59: "low";
       60...100: "passing";
       _: "invalid";
   };
   printf("%v\n", category);

Expression arms require semicolons. Their values should have compatible
types, since the compiler derives the expression type from an arm.

Alternatives and guards
-----------------------

The parser supports comma-separated alternatives and ``if`` guards::

   match number {
       1, 2, 3: printf("small\n");
       4...9 if number != 7: printf("middle\n");
       _: printf("other\n");
   }

``_`` and ``default`` are wildcard spellings. Use the wildcard alone in
its arm. Ranges and comparisons for floating-point subjects are not
supported in the native code generator. The i386 object backend does not
currently handle ``match`` statements; use x86-64 native or JIT for these
examples. Test ordering carefully because earlier arms take priority.
