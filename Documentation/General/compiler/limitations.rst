Current Implementation Limits
=============================

Modulon is under active development. The following points are visible
in this source archive and matter when reading older or ambitious
feature descriptions.

- **Headers:** ``include`` does not load C header declarations from disk.
- **Macros:** ``define`` is a simple object-style substitution system,
  not a full C preprocessor.
- **Local ``var``:** it requires an initializer; global ``var`` is not
  parsed as a top-level declaration.
- **Scopes:** native local-name handling is function-wide in parts of the
  code generator; block shadowing is not fully implemented.
- **Types:** ``typeof`` works as a type expression, not a runtime string.
- **Strings:** ``string`` is represented as ``char *``; not a managed,
  dynamically resizable string object.
- **Memory:** local stack space is planned at compile time, but arbitrary
  heap allocation is not automatically freed by an ownership system.
- **Input:** ``input`` uses a shared buffer of 1,024 bytes in native mode.
- **Asm:** native inline statements have a small whitelist of instructions.
- **Calls:** native indirect calls through arbitrary function pointers
  are not yet supported like direct calls.
- **Native switch:** x86-64 code generation rejects ``switch``;
  there is a backend-specific i386 path.
- **32-bit matching:** i386 object output rejects ``match`` statements.
- **Portability:** the current AOT/JIT engine is x86-64 and ELF/POSIX
  oriented, not a universal multi-architecture executable generator.
- **Compatibility flags:** common GCC flags can be accepted without
  their usual behavior being implemented.

These caveats are descriptive, not a judgment about planned future
features. Use ``--version``, ``--help`` and small compiler tests when a
feature matters for a production program.
