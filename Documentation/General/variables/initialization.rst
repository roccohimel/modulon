Initialization and Initializer Lists
====================================

An initializer supplies a value when storage is declared::

   int count = 5;
   string title = "Compiler";

Inside a function::

   int main() {
       var ready = 1;
       int values[3];
       values[0] = 1;
       values[1] = 2;
       values[2] = 3;
       printf("%v\n", values[0]);
       return 0;
   }

The parser accepts brace-enclosed initializer lists and contains
logic to infer an omitted array bound. However, the current native code
generator can fail when a local initializer list reaches expression
generation. Assigning array elements individually, as above, works in
this revision. Do not assume every accepted initializer parses through
to valid native code.

Avoid assuming uninitialized local variables are automatically zeroed.
The native backend reserves stack space for locals but does not guarantee
that every uninitialized local receives a defined value. Initialize
pointers, counters, and struct fields before reading them.

Global storage uses a different code-generation path. JIT execution can
have different initialization behavior from native output for some
complex globals. For portable code, explicitly initialize important
globals and test both backends when you rely on them.
