CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randstr(1000,1000));
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    CREATE INDEX t1i1 ON t1(x);
    CREATE TABLE t2 AS SELECT x AS a, x AS b FROM t1;
    CREATE INDEX t2i1 ON t2(b);
  
INSERT INTO t1 SELECT * FROM t1;
  
DELETE FROM t1;
  
set ::go 1
  set ::sql $sql
  set ::i 1
  while {$::go
set r {1 {database or disk is full
#     PRAGMA default_cache_size = 10;
#     CREATE TABLE t3(a, b, UNIQUE(a, b));
#     INSERT INTO t3 VALUES( randstr(100, 100), randstr(100, 100) );
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     INSERT INTO t3 SELECT randstr(100, 100), randstr(100, 100) FROM t3;
#     UPDATE t3 
#     SET b = (SELECT a FROM t3 WHERE rowid = (SELECT max(rowid)-1 FROM t3))
#     WHERE rowid = (SELECT max(rowid) FROM t3);
#     PRAGMA cache_size;
#   
