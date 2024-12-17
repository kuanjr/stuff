@echo off

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (
   set year=%%c
   set month=%%a
   set day=%%b
)

For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a:%%b)

:: Map numeric months to abbreviated month names
for %%M in ("01 Jan" "02 Feb" "03 Mar" "04 Apr" "05 May" "06 Jun" "07 Jul" "08 Aug" "09 Sep" "10 Oct" "11 Nov" "12 Dec") do (
    for /f "tokens=1,2" %%A in (%%M) do if "%%A"=="%month%" set month=%%B
)
set commitmessage=%day% %month% %mytime%
echo %commitmessage%


git add .

git commit -m "%commitmessage%"

git push origin main

echo Operation complete.

pause
