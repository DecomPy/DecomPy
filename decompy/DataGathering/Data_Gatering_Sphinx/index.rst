.. Data Gatering Design Decision Documentation documentation master file, created by
   sphinx-quickstart on Fri Jan 11 19:14:21 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Data Gathering Design Decision's documentation!
=======================================================================

   The goal of the data gathering is to gather and clean the data so that it can be sent to the
   database in loads. 
   
   The above goal is derived from the following user story: As a data scientist, I want to be 
   able to mass compile C files and organize the results so that it can be loaded into a database.

   Thus, in order for the data to be sent to the database, the data (C files) must first be compiled.
   Then, this data must be organized in a way that is acceptable to the database.  

.. toctree::
   :maxdepth: 2
   :caption: Contents: 


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
