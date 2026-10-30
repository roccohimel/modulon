Assembler
=========

Modulon includes built-in assembler support. Assembly can be used from within the language, so you do not need a separate assembler or build step for the few places where you need exact instructions.

Typical reasons are hardware-specific instructions, hand-tuned inner loops, and boot or startup code. As with C, assembly is target-specific, so keep it small and isolated.
