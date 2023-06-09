

    CREATE TABLE t4(a PRIMARY KEY, b);
    INSERT INTO t4 VALUES(1, 'one');
    INSERT INTO t4 VALUES(2, 'two');
    INSERT INTO t4 VALUES(3, 'three');
  
SELECT * FROM sqlite_master
 DELETE FROM t4 
 SELECT * FROM sqlite_master 
 SELECT * FROM t4 

 
    BEGIN;
    INSERT INTO t4 VALUES(1, 'one');
    INSERT INTO t4 VALUES(2, 'two');
    INSERT INTO t4 VALUES(3, 'three');
    COMMIT;
  
 SELECT * FROM t4 

 SELECT a FROM t4 ORDER BY a 

 PRAGMA integrity_check 

