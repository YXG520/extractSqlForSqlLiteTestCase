

  CREATE TABLE t1(a TEXT);
  INSERT INTO t1(a) VALUES('abc'),('def'),(NULL);
  CREATE TABLE t2(b TEXT);
  CREATE TRIGGER r3 AFTER INSERT ON t1 BEGIN
   UPDATE t2 SET (b,a)=(SELECT 1) FROM t1 JOIN t2 ON (SELECT * FROM (SELECT a));
  END;



  ALTER TABLE t1 RENAME COLUMN a TO b;



  SELECT quote(a) FROM t1 ORDER BY +a;
