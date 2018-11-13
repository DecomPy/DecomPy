
The following procedure shows how to execute the file named: insert_row.py
To execute this file properly, one must first be in the directory named: sqlite_Delete

In the command prompt, please type the following commands in order to run the program:
	
	python3 delete_row.py

This command will generate a file named: d_t.db
Now, run the d_t.db file using the following command:

	sqlite3 d_t.db

When the above command gets executed, you will have access to the tables located in the delete_row.py file.

To see all the tables located in delete_row.py file, please type the following command:

	.tables

It should return these two tables: ML, meta
To do query select of all the elements located in a particular table, please type the following commands:

	SELECT * FROM ML;

The above command will print to the console all the elements stored in the ML table.

	SELECT * FROM meta;

The above command will print to the console all the elements stored in the meta table.

To exit the database, please type the following command:

	.exit

NOTE: running delete_row.py file after exiting the database WILL NOT WORK. This is simply due to the UNIQUE constrains placed
on some of the elements inside the ML table. To run this program again from scratch, one must first DELETE the generated file: d_t.db.
After deleting the d_t.db file, you can re-run the delete_row.py program and it should work without throwing any errors.
