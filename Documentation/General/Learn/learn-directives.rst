Include and define
==================

C uses a separate preprocessor with ``#include`` and ``#define``. Modulon replaces that syntax with two language-level directives, ``include`` and ``define``, written without the ``#``.

-  ``include`` brings in another file’s declarations.
-  ``define`` gives a name to a constant or replacement.

Header files live in the repository’s ``include/`` directory. Check `examples/ <https://github.com/roccohimel/modulon/tree/master/examples>`__ for how the directives are written in current programs.
