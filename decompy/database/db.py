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
        self.offset = 0

        # check if we have the connection and assign the cursor
        if self.conn is not None:
            self.cursor = self.conn.cursor()

        # if setting it up by defaults to True, if false, then user must create own database
        if default_tables:
            # IMPORTANT: dates must be in format YYYY-MM-DD
            sql_create_meta_table = """CREATE TABLE IF NOT EXISTS meta_table (
                                            author_repo_key text PRIMARY KEY NOT NULL,
                                            repo_name text NOT NULL,
                                            license text,
                                            url text UNIQUE,
                                            author text NOT NULL,
                                            filter_approval_date date NOT NULL,
                                            llvm_gen_date date NOT NULL,
                                            filter_date date NOT NULL,
                                            compilation_date date NOT NULL,
                                            master_download_date date NOT NULL
                                    );"""

            sql_create_ml_table = """CREATE TABLE IF NOT EXISTS ml_table (
                                          file_path text PRIMARY KEY NOT NULL,
                                          author_repo_key text NOT NULL,
                                          source_code text UNIQUE NOT NULL,
                                          object_file blob UNIQUE NOT NULL,
                                          elf blob UNIQUE NOT NULL,
                                          llvm_unop text UNIQUE NOT NULL,
                                          llvm_op text UNIQUE NOT NULL,
                                          assembly text UNIQUE NOT NULL,
                                          FOREIGN KEY (author_repo_key) REFERENCES meta_table (author_repo_key) ON DELETE CASCADE ON UPDATE CASCADE
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
        :return: bool or nothing.
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
            sql = "SELECT * FROM ml_table WHERE author_repo_key = '{}'".format(repo)
            self.cursor.execute(sql)

            # after selecting, get all matching files
            result = self.cursor.fetchall()

            # check if result is there after fetching
            if result is not None:
                return result  # return all results, for just one use result[0]
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
            self.cursor.execute(sql)

            # after selecting, get all matching files
            result = self.cursor.fetchall()

            # check if result is there after fetching
            if result is not None:
                return result  # return all results, for just one use result[0]
            else:
                return False

        except Exception as e:
            print("find_parent", str(e))

        return False

    def insert_meta(self, meta_tuple, override=False):
        """
        inserts or replaces if it exists new meta row by adding it to the transaction builder into the meta table
        or replaces existing one.
        :param meta_tuple: the meta tuple to add the info. Contains author_repo_key, repo_name, license, url, author,
        filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date, and whether or
        not to override.
        :type: tuple - str (not null), str (not null), str, str (not null), str (not null),
        str (not null), str (not null), str (not null), str (not null), str (not null)
        :param override: to override the transaction to immediately process the query or not.
        :type: bool
        :return: bool or nothing
        """
        try:
            sql = """REPLACE INTO meta_table(author_repo_key, repo_name, license, url, author, filter_approval_date, 
                      llvm_gen_date, filter_date, compilation_date, master_download_date)
                      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"""
            self.__transaction_builder(sql, meta_tuple, override)
            return True
        except Error as e:
            print(e)

        return False

    def insert_ml(self, ml_tuple, override=False):
        """
        inserts or replaces, if it exists, a new ml row by adding it to the transaction builder. Can override.
        :param ml_tuple: file_path, author_repo_key, source_code, object_file, llvm_unop, and llvm_op
        :type: tuple - str (not null), str (not null), str (not null), binary (not null), str (not null), str (not null),
            binary (not null), str (not null)
        :param override: to override the transaction to immediately process the query or not.
        :type: bool
        :return: bool or nothing
        """
        try:
            sql = "REPLACE INTO ml_table(file_path, author_repo_key, source_code, object_file, elf, llvm_unop, llvm_op, assembly) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

            self.__transaction_builder(sql, ml_tuple, override)
            return True
        except Error as e:
            print(e)

        return False

    def delete_meta(self, author_repo_key, override=False):
        """
        delete meta data with this repo name, and the ml data as a result of cascading.
        :param author_repo_key: the author repo key from Github used to uniquely identify each situation.
        :param override: whether or not to override the transaction builder. Useful if we want it immediately
        or not going to have greater than 1000 transactoins.
        :return: bool
        """
        try:
            sql = """DELETE FROM meta_table WHERE author_repo_key = '{}'""".format(author_repo_key)
            self.cursor.execute(sql)

            return True
        except Error as e:
            print(e)

        return False

    def delete_ml(self, file_name):
        """
        delete ml data with this file name.
        :param file_name: the file name to delete.
        :param override: whether or not to override the transaction builder. Useful if we want it immediately
        or not going to have greater than 1000 transactoins.
        :return: nothing
        """
        try:
            sql = """DELETE FROM ml_table WHERE file_path = '{}'""".format(file_name)
            self.cursor.execute(sql)

            return True
        except Error as e:
            print(e)

        return False

    def get_repos(self, limit=100):
        """
        gets 100 random repos, or the number provided
        :param limit: the number of random repos to get
        :return:
        """
        try:
            sql = """SELECT * FROM ml_table ORDER BY RANDOM() LIMIT '{}'""".format(limit)
            self.cursor.execute(sql)

            # after selecting, get all matching files
            result = self.cursor.fetchall()

            # check if result is there after fetching
            if result is not None:
                return result  # return all results, for just one use result[0]
            else:
                return False
        except Error as e:
            print(e)

        return False

    def get_repos_pagination(self, limit=100):
        """
        get pagination repos, defaults to 100 queries
        :return: nothing
        """
        try:
            sql = """SELECT * FROM ml_table LIMIT '{}' OFFSET '{}'""".format(limit, self.offset)
            self.cursor.execute(sql)

            # after selecting, get all matching files
            result = self.cursor.fetchall()

            self.offset += limit

            # check if result is there after fetching
            if result is not None:
                return result  # return all results, for just one use result[0]
            else:
                return False
        except Error as e:
            print(e)

    def __transaction_builder(self, sql_query, sql_values, override=False):
        """
        populates the database using transactions instead of 1 by 1
        :param sql_query: the sql query
        :param sql_values: the info to add to the sql info.
        :param override: override the > 1000 transaction builder.
        :return: nothing
        """
        # create new object
        sql = {"sql_query": sql_query, "sql_values": sql_values}

        # then add and check the length
        self.sql_transaction.append(sql)
        if len(self.sql_transaction) >= 20 or override:
            print("Beginning transaction... inserting into database...")
            # begin transaction, insert 1000
            self.cursor.execute("BEGIN TRANSACTION")
            for s in self.sql_transaction:
                try:
                    self.cursor.execute(s["sql_query"], s["sql_values"])  # execute the transaction
                    # print('executing transactions')
                except Error as e:
                    print("error: ", str(e))
                    pass

            self.conn.commit()  # commit once done
            self.sql_transaction = []  # empty it out

