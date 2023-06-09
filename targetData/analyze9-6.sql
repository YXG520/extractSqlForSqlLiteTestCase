

  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a);
  CREATE INDEX i2 ON t1(b);
  INSERT INTO t1 VALUES(1, 1);
  INSERT INTO t1 VALUES(2, 2);
  INSERT INTO t1 VALUES(3, 3);
  INSERT INTO t1 VALUES(4, 4);
  INSERT INTO t1 VALUES(5, 5);
  ANALYZE;
  PRAGMA writable_schema = 1;
  CREATE TEMP TABLE x1 AS
    SELECT tbl,idx,neq,nlt,ndlt,sample FROM sqlite_stat4
    ORDER BY (rowid%5), rowid;
  DELETE FROM sqlite_stat4;
  INSERT INTO sqlite_stat4 SELECT * FROM x1;
  PRAGMA writable_schema = 0;
  ANALYZE sqlite_master;



  SELECT * FROM t1 WHERE a = 'abc';

