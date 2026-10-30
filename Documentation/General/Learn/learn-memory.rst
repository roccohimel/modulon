Memory management
=================

Modulon manages memory automatically at compile time, without a garbage collector. The compiler works out when storage is needed and when it can be released, so there is no collector running at runtime, no pauses, and no runtime cost for tracking.

When you need explicit control, manual memory management is available alongside the automatic default. This matches the project’s goal of keeping low-level programming practical while preserving control when programmers need it.

+-----------+-------------------------------+-------------------------------------------------------+
| Mode      | Who decides lifetime          | Typical use                                           |
+===========+===============================+=======================================================+
| Automatic | The compiler, at compile time | Everyday application code                             |
+-----------+-------------------------------+-------------------------------------------------------+
| Manual    | You                           | Custom allocation, tight control of layout and timing |
+-----------+-------------------------------+-------------------------------------------------------+

Because management happens at compile time, the compiler’s diagnostics are the place to look when a program’s memory use is not what you expected.
