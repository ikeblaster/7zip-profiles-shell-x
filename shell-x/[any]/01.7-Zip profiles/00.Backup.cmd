setlocal enabledelayedexpansion
@echo off

call :datetime now

set "out=%~1_!now!"

if not "%2"=="" (
	set "dir=%~dp1"
	set "dir=!dir:~0,-1!"
	call :basename nam "!dir!"
	set "out=%~dp1!nam!_!now!"
)


"C:\Program Files\7-Zip\7zG.exe" a ^
	-t7z ^%= 7zip format =%
	-saa ^%= Always add archive type extension. =%
	-ssw ^%= Compresses files open for writing by another applications. =%
	-ssp ^%= Don't change Last Access of source files while archiving. =%
	-mtc ^%= Stores Creation timestamps for files. =%
	-mta ^%= Stores last Access timestamps for files. =%
	-mtm ^%= Stores last Modified timestamps for files. =%
	-mtr ^%= Stores file attributes. =%
	-mx5 ^%= Sets level of compression. =%
	-- "!out!" %*


exit /b

:basename <resultVar> <pathVar>
(
    set "%~1=%~n2"
    exit /b
)


:datetime <resultVar>
(
	for /f "skip=1" %%x in ('wmic os get localdatetime') do @(
		set MyDate=%%x
		set %~1=!MyDate:~0,4!-!MyDate:~4,2!-!MyDate:~6,2!_!MyDate:~8,2!-!MyDate:~10,2!-!MyDate:~12,2!
		exit /b
	)
	exit /b
)

