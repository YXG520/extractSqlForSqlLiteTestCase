

  CREATE TABLE t1(a ,b FLOAT);
  INSERT INTO t1 VALUES(1,1);
  CREATE INDEX t1x1 ON t1(a,b,a,a,a,a,a,a,a,a,a,b);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1x1','648 324 81 81 81 81 81 81 81081 81 81 81');
  ANALYZE sqlite_schema;
  SELECT a FROM (SELECT a FROM t1 NATURAL LEFT JOIN t1) NATURAL LEFT JOIN t1 WHERE (rowid,1)<=(5,0);

