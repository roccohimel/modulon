Pointers, Bounds and Safety
===========================

Modulon exposes pointers and arrays for low-level programming. Those
features require the same care as pointers in C.

- Do not read an uninitialized pointer or local variable.
- Index only within an array's valid element range.
- Avoid pointers to locals after their function returns.
- Keep string destinations large enough for all bytes and the final NUL.
- Avoid double frees, and do not dereference a pointer after a free.
- Check any allocation or input operation for failure where required.
- Keep the types of external function parameters and results correct.

The parser and code generator do not add general runtime bounds checking
or a borrow checker. The automatic local-stack layout is a convenience,
not a substitute for memory-safety testing.

Some compiler diagnostics point at source line/column, but invalid runtime
pointer use may not produce a clean compiler error. Reproduce bugs with a
small program and test under the output mode you intend to deploy.
