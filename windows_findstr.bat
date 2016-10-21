@echo off
set /p findnum=请输入查询数字:
::findstr /ms %findnum% *.txt
md abc%findnum%
::findstr /ms %findnum% *.txt >> tmptxt
::for /f  "tokens=1" %%i in (tmptxt) do copy %%i abc%findnum%
::rm tmptxt
for /f %%i in ('findstr /ms %findnum% *.txt') do (copy %%i abc%findnum%)
pause>nul
