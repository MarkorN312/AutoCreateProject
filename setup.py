import sys
import os
from github import Github

username = sys.argv[2]
password = sys.argv[3]
path = 'path/to/saving/repository'

def create():
    folderName = str(sys.argv[1])
    os.makedirs(path + folderName)
    Github(username, password).get_user().create_repo(folderName)
    print('Succesfully created repository',folderName)

if __name__ == "__main__":
    create()
