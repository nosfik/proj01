set MYSQLUSER=root
set MYSQLPASS=sa

set DATABASE=realty

mysqldump -u%MYSQLUSER% -p%MYSQLPASS% %DATABASE% > %DATABASE%.sql 