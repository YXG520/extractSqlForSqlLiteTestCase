

  CREATE TABLE t10(a,b);
  INSERT INTO t10 VALUES(1,2),(8,9),(3,4),(5,4),(0,7);
  CREATE INDEX t10b ON t10(b);
  SELECT b, rowid, '^' FROM t10 ORDER BY b, a LIMIT 4;

