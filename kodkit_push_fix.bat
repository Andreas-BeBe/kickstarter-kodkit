@echo off
REM Automatisk Git init och push för Kickstarter Kodkit (Fixad version)
cd /d %~dp0

echo Tar bort tidigare remote (om den finns)...
git remote remove origin

echo Lägger till remote origin...
git remote add origin https://github.com/Andreas-BeBe/kickstarter-kodkit.git

echo Lägger till filer...
git add .

echo Skapar commit...
git commit -m "Första commit med kodkit, README och .gitignore"

echo Skapar main branch...
git branch -M main

echo Pushar till GitHub...
git push -u origin main

echo Färdigt!
pause
