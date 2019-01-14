@echo off
set /p project="Enter ID: "
echo Project name is %project%

cd C://Workspace
mkdir "%project%"
cd "%project%"
mkdir Blog Circuit Code Edits Raw Thumbnails Upload
mkdir Code\Lib Raw\Images Raw\Videos Raw\Unused Raw\B_Rolls Raw\Screen_Capture
cd Code
echo Started working on project on %DATE:~10,4%%DATE:~4,2%%DATE:~7,2% %project% > README.md
git init
git add .
git commit -m "Starting the project on %DATE:~10,4%%DATE:~4,2%%DATE:~7,2%"
C:\Program^ Files\Portable^ Installations\curl\bin\curl.exe  -i -H "Authorization: token ____Replace_eith_your_github_token___" -d "{\"name\": \"%project%\", \"private\": true }" https://api.github.com/user/repos
set url_gh=%project: =-%
git remote add origin https://github.com/oksbwn/%url_gh%
git push -u origin master