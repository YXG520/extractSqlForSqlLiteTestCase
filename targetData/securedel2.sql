PRAGMA secure_delete = 1 
PRAGMA auto_vacuum = 0 
CREATE TABLE t1(x, y) 
0
DELETE FROM t1 WHERE rowid = 1 
1
DELETE FROM t1 WHERE rowid = 1 

PRAGMA cache_size = 200;
    PRAGMA secure_delete = 1;
    CREATE TABLE t2(x);
    SELECT * FROM t1;
  
INSERT INTO t2 VALUES(randomblob($i)) 
DELETE FROM t1 
