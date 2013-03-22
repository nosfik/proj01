set MYSQLUSER=root
set MYSQLPASS=q1w2

set DATABASE=realty

mysqldump -u%MYSQLUSER% -p%MYSQLPASS% %DATABASE% > %DATABASE%.sql 