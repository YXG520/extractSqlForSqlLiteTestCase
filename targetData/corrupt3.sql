PRAGMA auto_vacuum=OFF;
    PRAGMA page_size=1024;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES($bigstring);
  
SELECT x FROM t1
  
PRAGMA integrity_check
  
SELECT substr(x,1,10) FROM t1
  
PRAGMA integrity_check
  
SELECT substr(x,1,10) FROM t1
  
PRAGMA integrity_check
  
