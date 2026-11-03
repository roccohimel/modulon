Install and Build
=================

The source tree includes a Makefile. No separate installer is required.
The compiler binary built by this revision is ``bin/mlonc``.

Prerequisites
-------------

You need a C11-capable C compiler, ``make``, and the system development
headers. The current Makefile links with ``-ldl``; POSIX system libraries
and APIs are needed for features such as the JIT. A Git client is useful if
you are cloning the repository, but is not required to build an unpacked
source archive.

Build from the unpacked archive
-------------------------------

From the project root (the directory containing ``Makefile``)::

   make
   ./bin/mlonc --version
   ./bin/mlonc --help

For a clean rebuild::

   make clean
   make -j2

To install to your system::
   
   ./configure --prefix="/usr"
   sudo rm -rfv /usr/bin/mlon
   sudo make install

So a full Modulon installation would be::
   
   make clean
   make -j$(nproc)
   ./configure --prefix="/usr"
   sudo rm -rfv /usr/bin/mlon
   sudo make install 
   sync 

``make`` compiles every ``src/*.c`` file into ``build/*.o`` and links the
compiler at ``bin/mlonc``. The ``make clean`` target removes those output
files. The Makefile defines no ``install`` target, so installing into a
system-wide directory requires a separate step of your own.

Get a fresh checkout
--------------------

If you want Git history, clone from the project's current repository
address rather than relying on links in older copies of the documentation.
After cloning, run ``make`` in the checkout.

If the build fails
------------------

Check that ``cc`` and ``make`` are installed, and read the **first** compiler
error. On a non-POSIX platform or 32-bit host, the 64-bit JIT and native
output may not work. See `Troubleshooting <../reference/troubleshooting.rst>`__
and `Build tools <../tools/tools-make.rst>`__.
