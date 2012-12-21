@echo off

rem get a random port between 9000 and 9999
set /A port = %RANDOM%*999/32768+9000

rem start the server and the browser
start "IIS Express" "%programfiles(x86)%\IIS Express\iisexpress" /path:"%1" /port:%port%
start "IIS Express" "http://localhost:%port%"
