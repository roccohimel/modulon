Type Inference
==============

A local declaration starting with ``var`` asks the compiler to infer its
type from the initializer::

   int main() {
       var score = 92;
       var label = "A";
       var ratio = 2.5;
       return 0;
   }

The initializer is mandatory. These are rejected by the parser::

   var missing;
   var other;

Inference takes place at compile time; ``var`` does not turn a value into
a dynamically typed object. A later assignment does not make the variable
change its declared type. If precise signedness, width or pointer depth
matters, declare the type explicitly.

In the implementation in this archive, local declarations are collected
for the function's stack frame. A ``var`` must therefore refer to an
expression whose type the compiler can determine. Direct calls to
external functions without a known declaration may be treated as a
machine-word-sized return value, so explicit prototypes are safer for
interfaces where return types matter.

See `Variable declarations <../variables/declarations.rst>`__ and
`Type inspection <inspection.rst>`__.
