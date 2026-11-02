Scopes, Globals and Local Names
==============================

Global declarations appear outside functions and may be referenced by
functions that can see their symbols. Parameters are named when the
function is declared; local declarations appear inside a function body.

::

   int total = 0;

   int add_one(int value) {
       var next = value + 1;
       return next;
   }

   int main() {
       total = add_one(4);
       printf("%v\n", total);
       return 0;
   }

A useful current limitation: the x86-64 backend collects local symbols
into one function-wide set when planning stack storage. It can therefore
reject two locals with the same name even if they appear in different
nested blocks. Do not rely on normal C block shadowing working here.

Globals can use ``extern`` declarations and ``static`` linkage markers
in some contexts. Local function definitions are not supported. If a
name-resolution diagnostic is surprising, reduce the code to a single
function and inspect the declaration order.
