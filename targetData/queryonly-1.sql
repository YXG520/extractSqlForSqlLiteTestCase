

  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(123),(456);
  SELECT a FROM t1 ORDER BY a;



  PRAGMA query_only;



  PRAGMA query_only=ON;
  PRAGMA query_only;


INSERT INTO t1 VALUES(789);

DELETE FROM t1;

UPDATE t1 SET a=a+1;

CREATE TABLE t2(b);

CREATE INDEX t1a ON t1(a);

DROP TABLE t1;

ANALYZE;


  SELECT a FROM t1 ORDER BY a;
