

PRAGMA cache_size=10; SELECT 1 FROM sqlite_master;

PRAGMA cache_size=50; SELECT 1 FROM sqlite_master;


     CREATE TABLE t1(a,b);
     CREATE TABLE t2(x,y);
     INSERT INTO t1 VALUES(1, zeroblob(800));
     INSERT INTO t1 VALUES(2, zeroblob(800));
     INSERT INTO t2 SELECT * FROM t1;
     INSERT INTO t1 SELECT x+2, y FROM t2;
     INSERT INTO t2 SELECT a+10, b FROM t1;
     INSERT INTO t1 SELECT x+10, y FROM t2;
     INSERT INTO t2 SELECT a+100, b FROM t1;
     INSERT INTO t1 SELECT x+100, y FROM t2;
     INSERT INTO t2 SELECT a+1000, b FROM t1;
     INSERT INTO t1 SELECT x+1000, y FROM t2;
  
