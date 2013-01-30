set MYSQLUSER=pechatnik
set MYSQLPASS=sa

set DATABASE=pechatnik

mysql -u%MYSQLUSER% -p%MYSQLPASS% %DATABASE% < pechatnik.sql 