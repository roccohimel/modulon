Install
=======

Modulon is currently distributed as source code. You build the compiler yourself from the repository; there is no separate installer.

Requirements
------------

You need a C toolchain and ``make``, since the repository is built with a ``Makefile``, plus ``git`` to fetch the code. The exact compiler requirements and supported platforms depend on the revision you check out, so read the build scripts and documentation shipped with it.

1. Get the source
-----------------

::

   git clone https://github.com/roccohimel/modulon.git
   cd modulon

The default branch is ``master``. Release tags, when published, are listed on the repository’s Tags page.

2. Build
--------

::

   make clean
   make -j$(nproc)

This reads the top-level ``Makefile``. See `Makefile <tools-make.rst>`__ for details.

3. Check the result
-------------------

The newly made compiler will be found:

::

   bin/mlonc

To compile with AOT (default), run:

::

   bin/mlonc PATH_TO_SOURCE -o PROGRAM_NAME

To compile with JIT, run:

::

   bin/mlonc PATH_TO_SOURCE --jit

You can find example programs at https://github.com/roccohimel/modulon/tree/master/examples. To remove all outputted files, run:

::

   make clean

Troubleshooting
---------------

-  If ``make`` fails, check the error against the repository’s build scripts first; platform support varies by revision.
-  If something looks like a compiler bug, collect a minimal reproducible ``.mlon`` file and see `Contributing <contributing.rst>`__.
