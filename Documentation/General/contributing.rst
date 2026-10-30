Contributing
============

Bug reports, reproducible test cases, documentation improvements and source contributions are all welcome.

Reporting a bug
---------------

Open an issue and include the compiler revision, your platform, the smallest ``.mlon`` file that shows the problem, and what you expected versus what happened.

AI usage
--------

Usage from AI is welcome, however you are prohibited from submitting large changes made only with AI.

Submitting changes
------------------

Change submissions do not have any limits except for some AI usage.

Fork the repository and branch from ``master``. Then clone your fork and create a new branch.

::

   git clone https://github.com/you/modulon_fork.git
   cd modulon_fork
   git switch master
   git switch -c my_branch
   git push origin my_branch

You can then do all your work with Modulon inside the branch you created.

Once you have finished working, then you'll need to submit your changes to ``master``. Add your changes:

::

   git add -A
   git commit --sign-off

Next you'll need to work on a commit title. We recommend the Conventional Commit prefix format. Common title prefixes:

::

   feat:     - New feature
   fix:      - Bug fix
   docs:     - Documentation changes
   style:    - Code formatting changes
   refactor: - Code restructuring
   perf:     - Performance improvements
   test:     - Adding or updating tests
   build:    - Build system changes
   ci:       - Continuous integration changes
   chore:    - General maintenance
   revert:   - Reverting a previous commit
   wip:      - Work in progress
   release:  - New software release
   deps:     - Dependency updates
   security: - Security improvements
   config:   - Configuration changes
   i18n:     - Internationalization
   l10n:     - Localization and translations
   init:     - Initial project setup
   merge:    - Merging branches
   hotfix:   - Urgent bug fix
   cleanup:  - Removing unused code or files

On the first line of the editor, make a title using one of the prefixes above. After you've done that, make a descriptive title for your commit. Here is a full example of a commit message:

::

   feat(parser): add support for enumeration declarations

   The parser now recognizes enumeration declarations and allows named
   constants to be defined within an enum block. Each constant receives
   an integer value, either assigned explicitly or calculated from the
   value of the preceding constant.

   Enumeration constants are registered in the symbol table during
   parsing, making them available to expressions, variable initializers,
   and conditional statements. References to these constants are
   resolved at compile time without requiring additional runtime
   storage.

   Explicit assignments are supported alongside automatically
   incremented values. When a constant is assigned a value, subsequent
   constants continue incrementing from that value unless another
   explicit assignment is encountered.

   The semantic analysis stage now checks for duplicate constant names,
   invalid assignments, and references to undefined enumeration
   constants. Invalid declarations produce diagnostics containing the
   source location and a description of the encountered error.

   The code generator treats enumeration constants as integer values,
   allowing existing arithmetic, comparison, and assignment operations
   to work without introducing a separate runtime representation.

   This provides a convenient way to group related integer constants
   while preserving compatibility with the existing C-derived type
   system.

Finally, submit your changes. Save your commit message, then:

::

   git push -u origin my_branch

And create a pull request at https://github.com/roccohimel/modulon. If you are unable to create a pull request, then email your repository link to roccohimel@disroot.org.

Review any contribution instructions in the repository before submitting. Contributions are accepted under the project’s license (see `License <license.rst>`__).
