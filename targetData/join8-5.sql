

  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(NULL),(NULL);
  CREATE TABLE t2(c, d);
  INSERT INTO t2(c,d) SELECT x, x FROM t1;
  CREATE INDEX t2dc ON t2(d, c);
  SELECT (SELECT c FROM sqlite_temp_schema FULL JOIN t2 ON d IN (1,2,3) ORDER BY d) AS x FROM t1;

