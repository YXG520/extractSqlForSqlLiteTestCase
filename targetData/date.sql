strftime('%%H:%%M:%%f',1237962480.%03d,'unixepoch')
SELECT datetime('2000-05-29 14:16:00','localtime');

SELECT strftime('%s','2003-10-22 12:34:00')
SELECT strftime('%Y-%m-%d %H:%M:%f', julianday('2006-09-24T10:50:26.047'))
  
do_test date-14.1 {
    execsql {
      PRAGMA auto_vacuum=OFF;
      PRAGMA page_size = 1024;
      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES(1.1);
    
