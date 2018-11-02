import sqlite3
from sqlite3 import Error

""" 
    This file follows the example found on this link: http://www.sqlitetutorial.net/sqlite-python/create-tables/ 
    This file creates three different tables. The three tables are humans, players, and engineers.
    The tables are connected by the primary KEY of the humans table. If the primary KEY of the 
    humans table matches either the foreign KEY job_id or the player_id, then that human is that player or that engineer.
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
    database = "create_tables.db"
 
    sql_create_humans_table = """ CREATE TABLE IF NOT EXISTS humans (
                                        id integer PRIMARY KEY,
                                        name text NOT NULL,
                                        age integer NOT NULL,
                                        gender text NOT NULL
                                    ); """
 
    sql_create_players_table = """CREATE TABLE IF NOT EXISTS players (
                                    id integer PRIMARY KEY,
                                    name text NOT NULL,
                                    age integer,
                                    jersey_num integer NOT NULL,
                                    player_id integer NOT NULL,
                                    gender text NOT NULL,
                                    team_name text NOT NULL,
                                    FOREIGN KEY (player_id) REFERENCES humans (id)
                                );"""

    sql_create_engineers_table = """CREATE TABLE IF NOT EXISTS engineers (
                                    id integer PRIMARY KEY,
                                    name text NOT NULL,
                                    age integer,
                                    social_security_num integer NOT NULL,
                                    job_id integer NOT NULL,
                                    gender text NOT NULL,
                                    engineering_field text NOT NULL,
                                    FOREIGN KEY (job_id) REFERENCES humans (id)
                                );"""
 
    # create a database connection
    conn = create_connection(database)
    if conn is not None:
        # create humans table
        create_table(conn, sql_create_humans_table)
        # create players table
        create_table(conn, sql_create_players_table)
        # create players table
        create_table(conn, sql_create_engineers_table)
    else:
        print("Error! cannot create the database connection.")

if __name__ == '__main__':
    main()