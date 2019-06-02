@echo off
python setup.py %1 %2 %3
cd Projects/%1
git init
git remote add origin https://github.com/%2/%1.git
touch README.md
git add .
git commit -m "Initial commit"
git push origin master
code .