import sqlite3
from sqlite3 import Error


class Database:
    """
    Class for database. Accepts a name to create a new database, and use the database based off of that name.
    """
    def __init__(self, database_name="c_source", default_tables=True):
        """
        Creates a database connection and default tables if enabled.
        :param database_name:
        :param default_tables:
        """

        # create a database connection or the database if not found
        self.database_name = database_name  # database name to create
        self.conn = self.create_connection(self.database_name)  # connection
        self.sql_transaction = []  # transaction builder

        # check if we have the connection and assign the cursor
        if self.conn is not None:
            self.cursor = self.conn.cursor()

        # if setting it up by defaults to True, if false, then user must create own database
        if default_tables:
            sql_create_meta_table = """CREATE TABLE IF NOT EXISTS meta_table (
                                            repo_name text PRIMARY KEY,
                                            license text,
                                            url text UNIQUE,
                                            author text,
                                            filter_approval_date date,
                                            llvm_gen_date date,
                                            filter_date date,
                                            compilation_date date,
                                            master_download_date date
                                    );"""

            sql_create_ml_table = """CREATE TABLE IF NOT EXISTS ml_table (
                                          file_path text PRIMARY KEY,
                                          repo_name text UNIQUE,
                                          source_code text UNIQUE,
                                          object_file blob UNIQUE,
                                          llvm_unop text UNIQUE,
                                          llvm_op text UNIQUE,
                                          FOREIGN KEY (repo_name) REFERENCES meta_table (repo_name) ON DELETE CASCADE ON UPDATE CASCADE
                                  );"""

            # test if connection was successful
            if self.conn is not None:
                # create meta table
                self.create_table(sql_create_meta_table)
                # create ML table
                self.create_table(sql_create_ml_table)
            else:
                print("Error: Cannot create the database connection. Does it exist? Right directory?")

    def create_connection(self, db_file):
        """
        create a database connection to the SQLite database specified by db_file
        :param db_file: database file
        :return: Connection object or None
        """
        try:
            self.conn = sqlite3.connect("{}.db".format(db_file))
            return self.conn
        except Error as e:
            print(e)

        return None

    def create_table(self, create_table_sql):
        """
        create a table from the create_table_sql statement
        :param create_table_sql: a CREATE TABLE statement
        :return:
        """
        try:
            self.cursor.execute(create_table_sql)
        except Error as e:
            print(e)

    def insert_meta(self):
        """
        Create a new meta element into the meta table
        :return: repo name
        """
        # TODO: decide if I want DO NOTHING or upsert
        try:
            sql = """INSERT INTO meta_table(license, url, author, filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date)
                      VALUES(?,?,?,?,?,?,?,?) ON CONFLICT DO NOTHING"""
            self.transaction_builder(sql)
        except Error as e:
            print(e)

    def insert_ml(self):
        """
        inserts a new ml row by adding it to the transaction builder
        :param ml:
        :return:
        """
        try:
            sql = """INSERT INTO ml_table(repo_name, c_source_code, object_file, llvm_unop, llvm_op) VALUES(?,?,?,?,?)
                 ON CONFLICT DO NOTHING""".format()
            self.transaction_builder(sql)

        except Error as e:
            print(e)

    def update_ml(self):
        """
        update c_source_code, object_file, llvm_unop, and llvm_op of the ML table.
        :return: repo_name
        """
        try:
            sql = """UPDATE ml_table
                      SET source_code = ?,
                      object_file = ?,
                      llvm_unop = ?,
                      llvm_op = ?
                      WHERE file_path = ?"""
            self.transaction_builder(sql)

        except Error as e:
            print(e)

    def update_meta(self):
        """
        update c_source_code, object_file, llvm_unop, and llvm_op of the ML table.
        :return: repo_name
        """
        try:
            sql = """UPDATE meta_table
                  SET c_source_code = ?,
                  object_file = ?,
                  llvm_unop = ?,
                  llvm_op = ?
                  WHERE repo_name = ?"""
            self.transaction_builder(sql)

        except Error as e:
            print(e)

    # populates database
    def transaction_builder(self, sql):
        """
        populates the database using a transaction
        :return:
        """
        self.sql_transaction.append(sql)
        if len(self.sql_transaction) > 1000:
            # begin transaction, insert 1000
            self.cursor.execute("BEGIN TRANSACTION")
            for s in self.sql_transaction:
                try:
                    self.cursor.execute(s)  # execute the transaction
                    # print('executing')
                except Error as e:
                    print("error: ", str(e))
                    pass

            self.conn.commit()  # commit once done
            self.sql_transaction = []  # empty it out


# if __name__ == '__main__':
