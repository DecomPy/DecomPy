import sqlite3
from sqlite3 import Error

""" 
    This file follows the example found on this link: http://www.sqlitetutorial.net/sqlite-python/create-tables/ 
    This file creates two tables. The first one is the meta table and this table holds information like url, 
    license, folder date or compilation date of files. The second one is the ML table and it holds information
    such as the actual source codes and its object files. 
"""

def create_connection(db_file):
    """ 
    create a database connection to the SQLite database specified by db_file
    :param db_file: database file
    :return: Connection object or None
    """
    try:
        conn = sqlite3.connect(db_file)
        return conn
    except Error as e:
        print(e)
 
    return None

def create_table(conn, create_table_sql):
    """ 
    create a table from the create_table_sql statement
    :param conn: Connection object
    :param create_table_sql: a CREATE TABLE statement
    :return:
    """
    try:
        c = conn.cursor()
        c.execute(create_table_sql)
    except Error as e:
        print(e)

def main():
    database = "c_t.db"
 
    sql_create_meta_table = """ CREATE TABLE IF NOT EXISTS meta (
                                        repo_name text PRIMARY KEY,
                                        license text NOT NULL,
                                        url text UNIQUE,
                                        author text UNIQUE,
					filter_approval_date date UNIQUE,
					llvm_gen_date date UNIQUE,
					filter_date date UNIQUE,
					compilation_date date UNIQUE,
					master_download_date date UNIQUE
                                    ); """
 
    sql_create_ML_table = """ CREATE TABLE IF NOT EXISTS ML (
                                    file_path text PRIMARY KEY,
				    repo_name text UNIQUE,
                                    c_source_code text UNIQUE,
                                    object_file blob UNIQUE,
                                    llvm_unop text UNIQUE,
                                    llvm_op text UNIQUE,
                                    FOREIGN KEY (repo_name) REFERENCES meta (repo_name)
                                ); """
 
    # create a database connection
    conn = create_connection(database)
    if conn is not None:
        # create meta table
        create_table(conn, sql_create_meta_table)
        # create ML table
        create_table(conn, sql_create_ML_table)
    else:
        print("Error! cannot create the database connection.")

if __name__ == '__main__':
    main()