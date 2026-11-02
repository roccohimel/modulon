Modulon Documentation
=====================

This is the documentation for the Modulon compiler and ``.mlon`` language.
Start with the installation and first-program guide, then choose a topic.
Pages describe the implementation in this source tree (v1.0-rc2), and point
out features that are limited or still evolving.

Getting started
---------------

- `Install and build <General/getting%20started/install.rst>`__
- `Your first program <General/getting%20started/learn-hello.rst>`__
- `Build and run workflow <General/getting%20started/workflow.rst>`__

Language reference
------------------

- `Language <General/language/overview.rst>`__: syntax, expressions, control flow, pattern matching, directives
- `Types <General/types/overview.rst>`__: built-ins, pointers, arrays, structs, type inspection
- `Variables <General/variables/overview.rst>`__: declarations, inference, initialization and scope
- `Functions <General/functions/overview.rst>`__: declarations, parameters, return values and calls
- `Memory <General/memory/overview.rst>`__: stack, heap, input buffers and practical safety
- `Input and output <General/io/overview.rst>`__: ``printf``, ``%v`` and ``input``
- `Assembler <General/assembly/overview.rst>`__: inline assembly and the internal assembler

Compiler and tools
------------------

- `Compiler <General/compiler/overview.rst>`__: options, AOT, JIT, i386 object output
- `Tools <General/tools/overview.rst>`__: building and developer utilities
- `Examples <General/examples/overview.rst>`__: annotated programs and practice
- `Reference <General/reference/overview.rst>`__: cheat sheet, troubleshooting, limitations
- `Legacy Learn index <General/learn/overview.rst>`__: links to the original tutorial pages

Project
-------

- `About <General/about.rst>`__
- `Contributing <General/contributing.rst>`__
- `Source code <General/source.rst>`__
- `License <General/license.rst>`__

**Implementation note:** Supported syntax may vary between AOT, JIT, and the
32-bit object backend. Where important, a page identifies the backend.
