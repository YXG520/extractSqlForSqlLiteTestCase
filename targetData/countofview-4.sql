

  DROP TABLE t1;
  DROP TABLE t2;
  DROP TABLE t3;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(4,'four');
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d TEXT);
  CREATE VIEW t3 AS SELECT a, b FROM t1 UNION ALL SELECT c, d FROM t2;
  SELECT count(*) FROM t3 ORDER BY sum(a);

