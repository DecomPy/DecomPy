import sqlite3
from sqlite3 import Error


class Database:
    """
    Class for database. Accepts a name to create a new database, and use the database based off of that name.
    """
    def __init__(self, database_name="c_source", default_tables=True):
        """
        Creates a database connection and default tables if enabled.
        :param database_name: the database name to create or use.
        :param default_tables: whether to have the default tables or user create their own.
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
            # IMPORTANT: dates must be in format YYYY-MM-DD
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
                                          repo_name text,
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
            return True
        except Error as e:
            print(e)

    def find_repo(self, repo):
        """
        finds a repo by the name, and get all its files
        :param repo: the repository
        :return: sql info or none
        """
        try:
            # get the repo and its files
            sql = "SELECT * FROM ml_table WHERE repo_name = '{}'".format(repo)
            self.conn.execute(sql)

            # after selecting, get all matching files
            result = self.conn.fetchall()

            # check if result is there after fetching
            if result is not None:
                return result[0]
            else:
                return False

        except Exception as e:
            print("find_parent", str(e))

        return False

    def find_file(self, file_name):
        """
            finds a file by the name, and get all its files
            :param file_name: the info for one file.
            :return: sql info or none
            """
        try:
            # get the repo and its files
            sql = "SELECT * FROM ml_table WHERE file_path = '{}'".format(file_name)
            self.conn.execute(sql)

            # after selecting, get all matching files
            result = self.conn.fetchall()

            # check if result is there after fetching
            if result is not None:
                return result[0]
            else:
                return False

        except Exception as e:
            print("find_parent", str(e))

        return False

    def insert_meta(self, repo_name, repo_license, url, author, filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date):
        """
        inserts or replaces if it existsa new meta row by adding it to the transaction builder into the meta table or replaces existing one.
        :return: nothing
        """
        try:
            # TODO: decide if we want to update or just insert even if we have repeated data
            sql = """REPLACE INTO meta_table(repo_name, license, url, author, filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date)
                   VALUES ("{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}", "{}")""".format(repo_name, repo_license, url, author, filter_approval_date, llvm_gen_date, filter_date,
                                                                               compilation_date, master_download_date)
            self.transaction_builder(sql)
            return True
        except Error as e:
            print(e)

        return False

    def insert_ml(self, file_path, repo_name, source_code, object_file, llvm_unop, llvm_op):
        """
        inserts or replaces if it exists a new ml row by adding it to the transaction builder
        :return: nothing
        """
        try:
            # TODO: decide if we want to update or just insert even if we have repeated data
            sql = """REPLACE INTO ml_table(file_path, repo_name, source_code, object_file, llvm_unop, llvm_op)
                  VALUES("{}", "{}", "{}", "{}", "{}", "{}")""".format(file_path, repo_name, source_code, object_file, llvm_unop, llvm_op)
            self.transaction_builder(sql)
            return True
        except Error as e:
            print(e)

        return False

    def delete_meta(self, repo_name):
        """
        delete meta data with this repo name, and the ml data as a result of cascading.
        :param repo_name: the repository name
        :return: nothing
        """
        try:
            sql = """DELETE FROM meta_table WHERE repo_name = '{}'""".format(repo_name)
            self.cursor.execute(sql)
            # self.transaction_builder(sql)

        except Error as e:
            print(e)

    def delete_ml(self, file_name):
        """
        delete ml data with this file name.
        :param file_name: the file name to delete.
        :return: nothing
        """
        try:
            sql = """DELETE FROM ml_table WHERE file_name = '{}'""".format(file_name)
            self.cursor.execute(sql)
            # self.transaction_builder(sql)

        except Error as e:
            print(e)

    def transaction_builder(self, sql, override=False):
        """
        populates the database using transactions instead of 1 by 1
        :param sql: the sql query
        :param override: override the > 1000
        :return: nothing
        """
        self.sql_transaction.append(sql)
        if len(self.sql_transaction) > 1000 or override:
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

    # with conn:
    #     # create a new meta
    #     meta = ('General Licencing ', 'www.url.com', 'SAL ', '2015-01-01', '2015-01-30', '2015-01-01', '2015-01-30',
    #             '2015-01-1');
    #     repo_name = create_meta(conn, meta)
    #
    #     # ML's
    #     ML_1 = (
    #     'The name of first repo: ', 'source_1.c', 'source_1.o', 'source_1 llvm unoptimized', 'source_1 llvm optimized');
    #     ML_2 = ('The name of second repo: ', 'source_2.c', 'source_2.o', 'source_2 llvm unoptimized',
    #             'source_2 llvm optimized');
    #
    #     # create ML tables
    #     create_ML(conn, ML_1)
    #     create_ML(conn, ML_2)
    #
    #     delete_ML(conn, 'The name of first repo: ');  # Deletes only the ML_1 row of the ML table.
    #     # delete_all_ML(conn);				# Deletes all of the rows of the ML table.
