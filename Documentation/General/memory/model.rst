The Memory Model
================

The main categories of storage are:

- **Local storage:** The native backend assigns stack-frame space to
  local variables; this space is associated with a function call.
- **Global storage:** Global declarations have program-level storage.
  Initialization behavior depends on the generated backend and initializer.
- **String literals:** Compiled into read-only string data with a trailing
  zero byte; the compiler can reuse identical literals internally.
- **Dynamically allocated storage:** Memory obtained from a library call
  (for example, ``malloc``) is separate from the function's local frame.

Modulon is often described as having compile-time memory management.
The source in this revision does plan local storage at compile time, and
does not run a garbage collector. It does **not** establish a general
ownership discipline that automatically releases arbitrary results of
``malloc``. Never assume the compiler will call ``free`` for you.

For plain stack variables there is no explicit ``free`` operation; their
storage becomes invalid after the function returns. For heap storage,
follow the allocation function's contract and pair it with the matching
release operation when appropriate.

See `Stack <stack.rst>`__ and `Manual allocation <manual.rst>`__.
