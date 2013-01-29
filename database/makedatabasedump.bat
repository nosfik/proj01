set MYSQLUSER=pechatnik
set MYSQLPASS=sa

set DATABASE=pechatnik

mysqldump -u%MYSQLUSER% -p%MYSQLPASS% %DATABASE% > pechatnik.sql 