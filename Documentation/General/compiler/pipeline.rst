How Compilation Works
=====================

The source tree implements a compact compiler pipeline:

#. **Read:** ``src/main.c`` loads one or more source files.
#. **Preprocess:** ``src/common.c`` strips simple include directives and
   applies object-style ``define`` substitutions.
#. **Tokenize:** ``src/lexer.c`` records tokens, source positions, and
   literal/operator spellings.
#. **Parse:** ``src/parser.c`` builds declarations, expressions and
   statements into structures defined by ``include/ast.h``.
#. **Types:** ``src/type.c`` models built-in types, alignment and target
   layout; type information is also inferred during code generation.
#. **Generate:** native x86-64 code generation is in ``src/codegen.c``;
   the ELF32 object backend is in ``src/i386.c``.
#. **Assemble/output:** ``src/assembler.c`` assembles generated text,
   and native ELF output is written; ``src/jit.c`` alternatively maps
   generated code into the current process.

A simplified map::

   .mlon source
       |
       v
   simple preprocessing -> lexer -> parser -> AST
                                               |
                                +--------------+-------------+
                                |                            |
                             x86-64                         i386
                                |                            |
                         assembly text                  ELF32 object
                                |
                         internal assembler
                                |
                        +-------+------+
                        |              |
                     ELF AOT         JIT memory

The command-line mode selects the final path. The compiler does not
currently emit a reusable cross-platform intermediate representation or
perform standard GCC optimization passes.
