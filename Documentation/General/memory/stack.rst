Stack Storage and Lifetimes
===========================

Local variables are placed in the current function's stack frame by the
native code generator. The compiler computes offsets and aligns each
local according to its type.

::

   int add_one(int n) {
       var result = n + 1;
       return result;
   }

``result`` has no meaning after ``add_one`` returns. You may return its
**value**, but must not return a pointer to that local storage and later
dereference it. In the absence of escape analysis, the compiler cannot
make such an address valid.

The current code generator collects local declarations for the whole
function while building its frame. That is why duplicate local names
can fail even in separate blocks: the implementation does not yet have
complete C-style block-specific shadowing.

Long-lived objects should be globals or stored in memory that outlives
the call. Heap allocation can provide the latter, but brings an explicit
lifetime responsibility. An array in a local frame does not grow
indefinitely; bound-check accesses manually.
