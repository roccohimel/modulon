Examples Shipped with the Repository
====================================

The ``examples/`` directory contains more substantial programs. Read
these together with the compiler revision, since some files may be in
the process of migrating from earlier syntax.

``examples/example.mlon``
-------------------------

Demonstrates ``include``, ``define``, a ``main`` function, ``var``
inference, prompted ``input``, ``printf`` with ``%v``, ``if`` and
``typeof`` type comparisons. This is a good initial reference for the
native backend.

``examples/match.mlon``
-----------------------

Demonstrates statement and expression forms of ``match``, including a
wildcard. **Syntax warning:** the archived example uses ``..`` for
ranges, but the parser of this revision expects ``...``. Change the
ranges to three dots in a local copy if testing it. The example may
also retain other earlier-language spellings.

``examples/string.mlon``
-------------------------

Shows the ``string`` type and character indexing. Internally ``string``
behaves as ``char *``; the program is not an example of a garbage-
collected or automatically resizing string object.

``examples/student_manager.mlon``
---------------------------------

A longer terminal program using structures, arrays, typed functions,
``for`` and ``while``, string handling, input conversion, sorting and
statistics. It is useful for seeing the syntax in a multi-function
program. It also illustrates why a name read from ``input`` is copied
before another prompted read overwrites the shared buffer.

For new code, begin with the smaller programs in
`Guided examples <guided.rst>`__ and adapt the larger examples only
after checking the compiler's current supported subset.
