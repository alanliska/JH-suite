del "%AppData%\Microsoft\Windows\Start Menu\Programs\JH 1.2.lnk"
copy "C:\JH\Temp.bat" %temp%
cd %temp%
Temp.bat
(goto) 2>nul & del "%~f0"
pause
exit