CREATE TABLE t1(a UNIQUE, b UNIQUE);
    INSERT INTO t1 VALUES(a_string(200), a_string(300));
    INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
    INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
  
PRAGMA mmap_size = 1000000;
    PRAGMA cache_size = 5;
    BEGIN;
      INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
      INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
      INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
      INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
  
INSERT INTO t1 VALUES(a_string(200), a_string(300)) 
sqlite3 db2 test.db
    set nRow [db2 one {SELECT count(*) FROM t1
INSERT INTO t1 VALUES(a_string(201), a_string(301)) 
