Manual Memory Management
========================

The compiler can generate calls to external C library functions on the
native POSIX target. Heap allocation is therefore possible through
well-understood system functions where the process environment provides
them. Include directives do not parse C prototypes; declare relevant
signatures yourself when you depend on their types.

A conceptual allocation lifecycle is:

#. Request a number of bytes from an allocator.
#. Check the returned pointer for a failed allocation.
#. Use only the memory region you obtained.
#. Release the allocation with the matching deallocator once finished.
#. Do not use the pointer after release.

In C programs, this is often ``malloc`` followed by ``free``. That
relationship remains important in Modulon: this revision's compiler does
not prove that arbitrary heap objects are freed, and a C library's
allocator still owns its allocation rules.

For programs needing custom arenas, buffers or memory-mapped regions,
first verify the source's target and ABI support. The 32-bit freestanding
object path does not implicitly provide a C runtime or heap allocator.

Related: `Pointer safety <safety.rst>`__,
`External functions <../functions/calls.rst>`__, and
`Freestanding target <../compiler/i386.rst>`__.
