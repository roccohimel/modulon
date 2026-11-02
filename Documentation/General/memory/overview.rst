Memory
======

Modulon aims to make ordinary storage easier to write while allowing
low-level control. It is important to distinguish the project's design
goals from what this source revision demonstrably implements.

- `Memory model <model.rst>`__: stack, globals, literals, heap
- `Stack and lifetimes <stack.rst>`__: local storage and addresses
- `Manual allocation <manual.rst>`__: working with library allocations
- `Pointer and array safety <safety.rst>`__: practical constraints
- `Input buffer lifetime <input-buffer.rst>`__: a shared buffer surprise

**Key distinction:** This compiler has no tracing garbage collector.
Automatic placement of local variables on the stack is not the same as
an implemented ownership checker or automatic freeing of every heap
allocation. Treat heap ownership as explicit unless you have verified a
specific managed-memory feature in your compiler revision.
