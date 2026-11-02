The Makefile
============

The root ``Makefile`` compiles C sources in ``src/`` with headers in
``include/``. It emits intermediate ``build/*.o`` files and links
``bin/mlonc``.

::

   make
   make clean
   make -j2

The Makefile supports the variables ``CC``, ``CFLAGS``, ``CPPFLAGS``,
``LDFLAGS`` and ``LDLIBS``. By default, compiler flags request C11 with
common warning checks, and linking includes ``-ldl`` for dynamic symbol
features. The ``all`` and ``clean`` targets are documented in the file.

There is no built-in install target and no external assembler target.
If you edit headers, automatic ``.d`` dependency files should cause the
corresponding objects to rebuild. Run ``make clean`` before investigating
stale build issues.
