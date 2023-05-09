@echo off
echo COPIA BASE DE DATOS
color a
SET PG_BIN="C:\Program Files\PostgreSQL\12\bin\pg_dump.exe"
SET PG_HOST=localhost
SET PG_PORT=5432
SET PG_DATABASE=app_bancoagrario
SET PG_USER=postgres
SET PGPASSWORD=1234
SET FECHAYHORA=%date:/=-%-%time:~0,8%
SET FECHAYHORA=%FECHAYHORA::=-%
SET FECHAYHORA=%FECHAYHORA: =0%
SET PG_FILENAME="C:/xampp/htdocs/app-bancoagrario/backups/%PG_DATABASE%_%FECHAYHORA%.backup"
%PG_BIN% -h %PG_HOST% -p %PG_PORT% -U %PG_USER% --format custom -b -f %PG_FILENAME% %PG_DATABASE%

::https://www.youtube.com/watch?v=6NAHSEEBPIU