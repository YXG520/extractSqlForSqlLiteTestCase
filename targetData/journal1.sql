CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,randstr(10,400));
    INSERT INTO t1 VALUES(2,randstr(10,400));
    INSERT INTO t1 SELECT a+2, a||b FROM t1;
    INSERT INTO t1 SELECT a+4, a||b FROM t1;
    SELECT count(*) FROM t1;
  
BEGIN;
    DELETE FROM t1;
  
ROLLBACK;
  
SELECT * FROM sqlite_master
  
