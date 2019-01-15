.. Usage and Purpose of Data-Gathering documentation master file, created by
   sphinx-quickstart on Mon Jan 14 21:01:20 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Usage and Purpose of Data-Gathering's documentation!
===============================================================

   The goal of the data gathering is to gather and clean the data so that it can be sent to the
   database in loads.

   The above goal is derived from the following user story: As a data scientist, I want to be 
   able to mass compile C files and organize the results so that it can be loaded into a database.

   To meet the above user story, the following tasks must be completed:

      Generate a list of compilable C files given a list of filtered C files.

      Compile C files using Clang to filter out unfit data.

      Document design decision & usage/purpose using Sphinx.

      Generate a single elf format C executable using python subprocess.

      Write a function to generate a folder full of elf executables using clang given a new line
      separated list of directories to C files.

      Update documentation for FileGetter.

.. toctree::
   :maxdepth: 2
   :caption: Contents:



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
