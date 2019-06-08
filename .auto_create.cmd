@echo off
set /p first="Name of repository: "
echo Log in using github account
set /p second="Username: "
set /p third="Password: "
python insert_path\setup.py %first% %second% %third%
cd insert_path\%first%
git init
git remote add origin https://github.com/%second%/%first%.git
touch README.md
git add .
git commit -m "Initial commit"
git push origin master
code .
