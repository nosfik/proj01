set MYSQLUSER=root
set MYSQLPASS=sa

set DATABASE=realty

mysql -u%MYSQLUSER% -p%MYSQLPASS% %DATABASE% < %DATABASE%.sql 