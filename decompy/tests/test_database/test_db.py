import unittest
from decompy.database.db import Database as db


class DatabaseTest(unittest.TestCase):
    def setUp(self):
        """
        sets up the database access, creates a new database if cannot find one.
        :return: nothing
        """
        self.db_test = db("c_source", True)

        # new element
        self.assertTrue(self.db_test.insert_ml("test4.c", "c_tutorials4", "source codes 4", "blobby4", "llvm_unop4", "llvm_op4"))
        # new element
        self.assertTrue(self.db_test.insert_ml("test2.c", "c_tutorials2", "source codes 2", "blobby2", "llvm_unop2", "llvm_op2"))
        # new element
        self.assertTrue(self.db_test.insert_ml("test5.c", "c_tutorials100", "source codes 5", "blobby100", "llvm_unop100", "llvm_op100"))
        # new element
        self.assertTrue(self.db_test.insert_ml("test6.c", "c_tutorials100", "source codes 6", "blobby101", "llvm_unop101",
                                               "llvm_op101"))

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
        :return: assert
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
        # insert meta, already exists, replace
        self.assertTrue(self.db_test.insert_meta(repo_name, repo_license, url, author, filter_approval_date,
                                                   llvm_gen_date, filter_date, compilation_date, master_download_date))
        # insert meta, new url
        self.assertTrue(self.db_test.insert_meta("decompy1", repo_license, "github.com/stuff1", author,
                                                 filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date))
        # insert meta same url, diff repo_name
        self.assertTrue(self.db_test.insert_meta("decompy2", repo_license, "github.com/stuff2", author,
                                                 filter_approval_date, llvm_gen_date, filter_date, compilation_date, master_download_date, True))

    def test_insert_ml(self):
        """
        tests to insert the machine learning repo and info
        :return: assert
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
        # replaces element
        self.assertTrue(self.db_test.insert_ml(file_path, repo_name, source_code, object_file, llvm_unop, llvm_op))

        # new element
        self.assertTrue(self.db_test.insert_ml("test1.c", "c_tutorials1", "source codes 1", "blobby1", "llvm_unop1", "llvm_op1"))

        # new element
        self.assertTrue(self.db_test.insert_ml("test3.c", "c_tutorials2", "source codes 3", "blobby3", "llvm_unop3", "llvm_op3", True))

    def test_find_repo(self):
        """
        tests to find a repo and all its files using the same foreign key
        :return: assertions
        """

        # search for repos and get all files with that repo
        # this is being deleted later on and may have conflicts due to pytest threading
        # self.assertTrue(len(self.db_test.find_repo("decompy")) == 1)
        self.assertTrue(len(self.db_test.find_repo("c_tutorials4")) == 1)
        self.assertTrue(len(self.db_test.find_repo("c_tutorials100")) == 2)

        # no repo exists
        self.assertFalse(self.db_test.find_repo("unknown repo name here"))

    def test_find_file(self):
        """
        tests to find a file name in the database
        :return: assert
        """
        self.assertTrue(len(self.db_test.find_file("test4.c")) == 1)
        self.assertTrue(len(self.db_test.find_file("test2.c")) == 1)

    def test_get_repos(self):
        """
        tests getting 100 random repos from the database
        :return:
        """
        # gets these numbers
        self.assertTrue(len(self.db_test.get_repos()) > 0)
        self.assertTrue(len(self.db_test.get_repos(50)) > 0)

    def test_get_repos_pagination(self):
        """
        tests using pagination on the database to get files
        :return:
        """

        # gets pagination, internal value will take care of it
        self.assertTrue(len(self.db_test.get_repos_pagination(2)) == 2)
        self.assertTrue(len(self.db_test.get_repos_pagination(2)) == 2)

    def test_delete_ml(self):
        """
        tests deleting a file from the ML table
        :return:
        """

        # test delete, then test if it exists
        self.assertTrue(self.db_test.delete_ml("test123.c", True))
        self.assertFalse(self.db_test.find_file("test123.c"))

    def test_delete_meta(self):
        """
        tests deleting an element from the meta database and deletes the files in that as well
        :return:
        """

        # test delete, then test if it exists
        self.assertTrue(self.db_test.delete_meta("decompy2", True))
        self.assertFalse(self.db_test.find_repo("decompy2"))














