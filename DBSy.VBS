Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "E:\Sendhil\DB Sync\DBbckUp.bat" & Chr(34), 0
Set WshShell = Nothing