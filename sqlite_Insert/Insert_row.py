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

def create_meta(conn, meta):
    """
    Create a new meta element into the meta table
    :param conn:
    :param meta:
    :return: repo name
    """
    sql = ''' INSERT INTO meta(license, url, author, filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date)
              VALUES(?,?,?,?,?,?,?,?) '''
    cur = conn.cursor()
    cur.execute(sql, meta)
    return cur.lastrowid

def create_ML(conn, ML):
    """
    Create a new task
    :param conn:
    :param ML:
    :return:
    """
 
    sql = ''' INSERT INTO ML(repo_name, c_source_code, object_file, llvm_unop, llvm_op)
              VALUES(?,?,?,?,?) '''
    cur = conn.cursor()
    cur.execute(sql, ML)
    return cur.lastrowid

def main():
    database = "i_t.db"
 
    sql_create_meta_table = """ CREATE TABLE IF NOT EXISTS meta (
                                        repo_name text PRIMARY KEY,
                                        license text,
                                        url text UNIQUE,
                                        author text,
					filter_approval_date date,
					llvm_gen_date date,
					filter_date date,
					compilation_date date,
					master_download_date date
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

    with conn:
        # create a new meta
        meta = ('General Licencing ', 'www.url.com', 'SAL ', '2015-01-01', '2015-01-30', '2015-01-01', '2015-01-30', '2015-01-1');
        repo_name  = create_meta(conn, meta)

        # ML's
        ML_1 = ('The name of first repo: ', 'source_1.c', 'source_1.o', 'source_1 llvm unoptimized', 'source_1 llvm optimized');
        ML_2 = ('The name of second repo: ', 'source_2.c', 'source_2.o', 'source_2 llvm unoptimized', 'source_2 llvm optimized');
 
        # create tasks
        create_ML(conn, ML_1)
        create_ML(conn, ML_2)

if __name__ == '__main__':
    main()