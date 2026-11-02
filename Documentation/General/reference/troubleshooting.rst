Troubleshooting
===============

``mlonc: no input files``
-------------------------

Pass a ``.mlon`` source file after the options, for example::

   ./bin/mlonc demo.mlon -o demo

``./bin/mlonc: No such file or directory``
-------------------------------------------

Run ``make`` in the repository root, then confirm ``bin/mlonc`` exists.
The Makefile does not install the compiler into ``PATH`` automatically.

``var declaration requires an initializer``
--------------------------------------------

Write ``var x = 3;`` rather than ``var x;``. For globals use explicit
C-style types, such as ``int x = 3;``.

``expected ...`` near a match arm
---------------------------------

Use ``...`` (three dots) for ranges, ``:`` before each arm result, and a
``;`` after each expression arm. Some older examples used ``..`` and
need updating when tested against the current parser.

``type expression cannot be used as a runtime value``
----------------------------------------------------

Compare ``typeof(value)`` with a type using ``==`` or ``!=``. Do not
pass ``typeof(value)`` directly to ``printf``.

``switch is supported by the i386 object backend only``
-------------------------------------------------------

You selected the native x86-64 backend. Use a supported ``if`` chain or
``match`` statement instead, or choose i386 object mode if that is your
actual target and your complete program supports it.

``match statements are not supported in -m32 mode``
--------------------------------------------------

Use the native x86-64 backend for ``match`` or rewrite the relevant
logic for an i386 target. The backends do not share a complete feature
set yet.

``--jit cannot be combined with ...``
--------------------------------------

Use only one output mode. ``--jit`` is for in-process native execution;
``-S`` outputs text, and ``-m32 -c`` produces an object.

Unresolved external symbol or unexpected return type
----------------------------------------------------

Check the function's expected ABI and declaration. ``include`` does not
bring real header declarations into the program. Verify shared-library
availability for AOT and JIT separately, and consider the ``-lNAME``
option for a native ELF dependency.

Programs lose a value after a second ``input``
-----------------------------------------------

``input`` reuses one static buffer. Copy earlier strings into separate
storage before another input call.

Where to report a compiler bug
------------------------------

Use the project's existing `Contributing <../contributing.rst>`__ page.
Include the exact compiler revision, output mode, source and diagnostic.
