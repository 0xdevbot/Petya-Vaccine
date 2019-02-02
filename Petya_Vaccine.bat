@ECHO OFF

IF NOT EXIST "c:\Windows\perfc.dat" ( ECHO VACCINE NOT FOUND! & goto :Ask)
IF EXIST "c:\Windows\perfc.dat" (

	ECHO VACCINE FOUND!
	
	IF EXIST "c:\Windows\perfc" (
		
	ECHO ATTENTION! YOU HAVE ALREADY RECEIVED YOUR PETYA VACCINATION. 
				goto :END )

)


:Ask 
set /P INPUT=Would you like to adminitster the vaccine? (y/n)
If /I "%INPUT%" EQU "y" goto :yes
If /I "%INPUT%" EQU "n" goto :no 
	
:yes
ECHO 	>C:\Windows\perfc.dat
ECHO	>C:\Windows\perfc
goto :CHECK
:CHECK
IF EXIST "C:\Windows\perfc.dat" ( ECHO perfc.dat CHECK )
IF EXIST "C:\Windows\perfc" ( ECHO perfc CHECK )
goto :END
:no 
goto :CHECK
:END
ECHO.
ECHO	Petya Vaccine found by @0xAmit
ECHO	Petya_Vaccine.bat by @DevinMFWallace
ECHO.
PAUSE
CLS
EXIT
