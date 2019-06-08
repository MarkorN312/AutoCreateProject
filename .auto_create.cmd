@echo off
set /p first="Name of repository: "
echo Log in using github account
set /p second="Username: "
set /p third="Password: "
python C:\Users\Uzivatel\Desktop\AutoCreateProject\setup.py %first% %second% %third%
cd C:\Users\Uzivatel\Desktop\AutoCreateProject\Projects\%first%
git init
git remote add origin https://github.com/%second%/%first%.git
touch README.md
git add .
git commit -m "Initial commit"
git push origin master
code .