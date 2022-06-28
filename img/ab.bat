setlocal enabledelayedexpansion
set "n=0"
for /f "delims=" %%a in ('dir /b /od *.jpg') do (
set/a n+=1&call ren "%%a" %%n%%.jpg )