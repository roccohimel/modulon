Literals and Comments
=====================

Numbers
-------

Decimal and hexadecimal integer literals are accepted::

   var count = 42;
   var mask = 0xff;
   var big = 4294967296;

The lexer accepts common ``U`` and ``L`` integer suffixes. Decimal floating
literals and scientific notation are tokenized; the parser currently
represents floating literals as ``double`` values. Check numeric operations
before assuming every C floating-point conversion is implemented.

Characters and strings
----------------------

Single quotes introduce a character literal; double quotes introduce a
string literal::

   char letter = 'M';
   string label = "Modulon";

Common escape sequences such as ``\n`` and ``\t`` work inside literals.
Adjacent quoted string tokens are joined by the parser. String literals
are stored with a trailing zero byte. ``string`` is represented internally
as a pointer to ``char``; it is not a dynamically managed string object.

Comments
--------

::

   // Comment to the end of the line
   /* A block comment,
      possibly spanning several lines */

The lexer recognizes both forms. For source-level constants, use
`define <directives.rst>`__ instead of attempting to put a declaration
inside a comment.
