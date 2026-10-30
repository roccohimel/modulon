Pattern matching
================

Pattern matching compares a value against several patterns and runs the first that fits. Modulon’s patterns support **ranges**, so one case can cover a span of values, and a **wildcard case** that matches anything left over.

It replaces long if/else chains or C ``switch`` blocks that need a separate case for each value. Typical uses are grading a score into bands, classifying a character, or mapping a status code to a message, with the wildcard as the default.

.. note::

   The exact syntax is still evolving and is not fixed by this documentation. Working examples are in `examples/ <https://github.com/roccohimel/modulon/tree/master/examples>`__ in the repository.
