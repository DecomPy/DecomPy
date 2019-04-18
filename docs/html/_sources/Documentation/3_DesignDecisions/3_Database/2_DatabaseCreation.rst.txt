Creating and Using the Database
*******************************

This is a log of major design decisions and reasoning made during creation of the database section of decompy.
At the time of writing this, this is made up of one class based off of the design diagram.

-----------------------------------------------------------------------------------------------------------------

Creating the Database and Purpose
    The Decompy team shall be using sqlite3 with Python's built in package. It is object oriented, meaning that each object
    represents its own database (or a reference to the same one). For example, supplying a name and passing a default flag
    for whether or not to create default tables (ml_table and meta_table) will allow a new database to be made or add to
    an existing database. From here we can utilize the functions for machine learning. It is important to keep only one
    connection (one object) reference to a database because it can cause conflicts with sqlite. Additionally, each query involving a delete, or insert/replace, is
    handled by the transaction builder, which is used to make the process much faster and less prone to errors when inserting
    data. Lastly, the database has many UNIQUE constraints to make sure we are not populating with the same data.
    This means that the data is less likely to lead us to a bias model when training. For this reason, it is simply ignored or replaced.




