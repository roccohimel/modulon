Data Layout and Portability
===========================

The compiler distinguishes a native x86-64 POSIX target from a 32-bit
i386 object target. Many fixed-width types keep their sizes, but some
fundamental C-style types necessarily follow the target ABI.

+--------------------+----------------+--------------+
| Type               | x86-64 bytes   | i386 bytes   |
+====================+================+==============+
| ``char``           | 1              | 1            |
+--------------------+----------------+--------------+
| ``short``          | 2              | 2            |
+--------------------+----------------+--------------+
| ``int``            | 4              | 4            |
+--------------------+----------------+--------------+
| ``long``           | 8              | 4            |
+--------------------+----------------+--------------+
| ``long long``      | 8              | 8            |
+--------------------+----------------+--------------+
| ``float``          | 4              | 4            |
+--------------------+----------------+--------------+
| ``double``         | 8              | 8            |
+--------------------+----------------+--------------+
| ``long double``    | 16             | 12           |
+--------------------+----------------+--------------+
| pointer            | 8              | 4            |
+--------------------+----------------+--------------+

These values come from ``src/type.c`` in this archive. ``size_t`` and
related pointer-sized aliases change with the target as well. Treat
``uint32_t`` / ``uint64_t`` as the intended fixed-width forms when
storing serialized numbers, and use ``sizeof`` to verify layout.

The design goal of consistent type naming does **not** mean every C type
has the same byte count across machines. The implementation explicitly
models target differences, so binary data and structs should never be
assumed portable without a defined layout.
