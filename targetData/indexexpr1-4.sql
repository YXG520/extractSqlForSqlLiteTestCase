

  CREATE TABLE t3(a,b,c);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<30)
  INSERT INTO t3(a,b,c)
    SELECT x, printf('ab%04xyz',x), random() FROM c;
  CREATE UNIQUE INDEX t3abc ON t3(CAST(a AS text), b, substr(c,1,3));
  SELECT a FROM t3 WHERE CAST(a AS text)<='10' ORDER BY +a;
  PRAGMA integrity_check;



  INSERT INTO t3 SELECT * FROM t3 WHERE rowid=10;

