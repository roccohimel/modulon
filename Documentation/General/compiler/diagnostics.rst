Errors and Diagnostics
======================

The lexer and parser report syntax problems with file, line and column
information. The compiler may continue to collect additional parse
errors using recovery logic and then summarize error and warning counts.

Examples of syntax problems include:

- Missing ``;`` after a declaration.
- Using ``var`` without an initializer.
- An unclosed literal or block comment.
- An unknown type name or duplicate declaration.
- A malformed ``match`` arm or a missing ``:``.

Other failures occur during code generation, including unsupported
expressions, native backend restrictions, or incompatible mode flags.
Such failures may be fatal immediately instead of being part of the
aggregated parser error count.

For a useful bug report, capture:

#. ``./bin/mlonc --version``.
#. The complete compiler command and selected mode.
#. The smallest ``.mlon`` file that reproduces the problem.
#. The exact diagnostic and its expected behavior.

See `Troubleshooting <../reference/troubleshooting.rst>`__.
