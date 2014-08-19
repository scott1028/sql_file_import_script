@echo off
SET PATH=C:\Program Files\MySQL\MySQL Server 5.6\bin;%PATH%

mysql --version

set /P user=username: 
set /P password=password: 
set /P db=database: 

FOR /f %%i in ('dir /a /w /b findstr *.sql') DO (
	@echo [Start Import] %%~nxi
	mysql -u%user% -p%password% %db% --default-character-set=utf8 < %%~nxi
	@echo [End Import]
	@echo
)
