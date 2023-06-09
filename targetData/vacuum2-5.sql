

  CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
  INSERT INTO t1 VALUES(1, randomblob(500));
  INSERT INTO t1 SELECT a+1, randomblob(500) FROM t1;      -- 2
  INSERT INTO t1 SELECT a+2, randomblob(500) FROM t1;      -- 4 
  INSERT INTO t1 SELECT a+4, randomblob(500) FROM t1;      -- 8 
  INSERT INTO t1 SELECT a+8, randomblob(500) FROM t1;      -- 16 


SELECT a, b FROM t1
 if {$a == 8
 execsql VACUUM 

SELECT 1, 2, 3
 execsql VACUUM 

SELECT a, b FROM t1 WHERE a<=10

    if {$a==6
