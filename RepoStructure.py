import os


class RepoStructure:
    def __init__(self, parentDir="."):
        self.parentDir = parentDir
        if os.path.exists(os.path.join(parentDir, "Repositories")):
            # TODO: Create "Repositories" folder in parentDir
            pass

    @staticmethod
    def formatRepo(self, repo):
        # TODO: Create repo folder inside "Repositories" folder
        # TODO: Create metafile in repo folder
        pass


if __name__ == "__main__":
    from RepoFilter import RepoFilter

    rs = RepoStructure()
