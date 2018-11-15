import unittest
from decompy.database.db import Database as db


class DatabaseTest(unittest.TestCase):
    def setUp(self):
        """
        sets up the database access, creates a new database if cannot find one.
        :return: nothing
        """
        self.db_test = db("c_source", True)

    def test_create_table(self):
        """
        tests if table already exists
        :return: assert
        """
        table = """CREATE TABLE IF NOT EXISTS meta_table (
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

        self.assertTrue(self.db_test.create_table(table))  # doesn't create table, but knows about it, no errors

    def test_insert_meta(self):
        """
        tests to insert the meta data and tests to override the transaction builder
        :return:
        """

        # base info
        repo_name = "decompy"
        repo_license = "BSD"
        url = "github.com/stuff"
        author = "John Smith"
        filter_approval_date = "2018-11-15"
        llvm_gen_date = "2018-11-15"
        filter_date = "2018-11-15"
        compilation_date = "2018-11-15"
        master_download_date = "2018-11-15"

        # insert meta
        self.assertTrue(self.db_test.insert_meta(repo_name, repo_license, url, author, filter_approval_date,
                                                 llvm_gen_date, filter_date, compilation_date, master_download_date))
        # insert meta, already exists, fail
        self.assertFalse( self.db_test.insert_meta(repo_name, repo_license, url, author, filter_approval_date,
                                                   llvm_gen_date, filter_date, compilation_date, master_download_date))
        # insert meta, new url
        self.assertTrue(self.db_test.insert_meta(repo_name, repo_license, "github.com/stuff2", author,
                                                 filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date))
        # insert meta same url, diff repo_name
        self.assertFalse(self.db_test.insert_meta("decompy2", repo_license, "github.com/stuff2", author,
                                                 filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date))

    def test_insert_ml(self):
        """
        tests to insert the machine learning repo and info
        :return:
        """
        # base info
        file_path = "test123.c"
        repo_name = "decompy"
        source_code = "int main(){return 0;}"
        object_file = "blob"
        llvm_unop = "stuff_unop"
        llvm_op = "stuff_op"

        # new element
        self.assertTrue(self.db_test.insert_ml(file_path, repo_name, source_code, object_file, llvm_unop, llvm_op))

        # new element, but it's same
        self.assertFalse(self.db_test.insert_ml(file_path, repo_name, source_code, object_file, llvm_unop, llvm_op))

        # new element, but source code is same
        self.assertFalse(self.db_test.insert_ml("test1.c", "c_tutorials", source_code, "blobby", "llvm_unop", "llvm_op"))

        # new element, but llvm_unop is same
        self.assertFalse(self.db_test.insert_ml("test2.c", "c_tutorials", source_code, "blobby", "llvm_unop", "llvm_op"))








