@Echo off
cls

Title MenuBar 1.0 - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a

Setlocal enabledelayedexpansion
:Top
cls
call MenuBar "%CD%\Files\File" f0

:mouse
REM Enabling Mouse Interaction with Cmd... Using 'Batbox'
For /F "Delims=: Tokens=1,2,3" %%A in ('Batbox.exe /m') Do (
	set Button=%%C
	set X=%%A
	set Y=%%B
	)

Call Check_MenuBar_Click.bat !X! !Y! _Menu_Option _Sub_menu_option

Title %_Menu_Option%x%_Sub_menu_option%
Goto :Top
pause>nul