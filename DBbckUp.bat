set PATH=%PATH%;C:\xampp\mysql\bin

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%_%datetime:~8,2%-%datetime:~10,2%-%datetime:~12,2%

mysqldump -h localhost -u fire -pfire123 fireopal | gzip > E:\data\fireopal__%datetime%.gz

@echo off
pause
