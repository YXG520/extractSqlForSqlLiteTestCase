

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT);
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d INT);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<8)
  INSERT INTO t1(a,b) SELECT x, 10*x FROM c;
  INSERT INTO t2(c,d) SELECT b*2, 100*a FROM t1;
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES
    ('t1',NULL,150105),('t2',NULL,98747);
  ANALYZE sqlite_schema;



  SELECT count(*) FROM t1 LEFT JOIN t2 ON c=b WHERE d IS NULL;



  SELECT count(*) FROM t1 LEFT JOIN t2 ON c=b WHERE d=100;



  SELECT count(*) FROM t1 LEFT JOIN t2 ON c=b WHERE d>=300;

