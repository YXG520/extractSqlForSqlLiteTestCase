

  PRAGMA page_size=1024;
  CREATE TABLE t1(a INT PRIMARY KEY, b BLOB, c INT) WITHOUT ROWID;
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
    INSERT INTO t1(a,b,c) SELECT x*2, zeroblob(100), x FROM c;
  UPDATE t1 SET b=zeroblob(1000) WHERE a=198;
  CREATE TABLE t2(x INTEGER PRIMARY KEY, y INT);
  INSERT INTO t2(y) VALUES(198),(187),(100);
  SELECT y, c FROM t2 LEFT JOIN t1 ON y=a ORDER BY x;



  SELECT y, c FROM t1 RIGHT JOIN t2 ON y=a ORDER BY x;

