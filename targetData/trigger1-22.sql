

  CREATE TABLE t1(
    a INTEGER PRIMARY KEY,
    b DOUBLE
  );
  CREATE TRIGGER x AFTER UPDATE ON t1 BEGIN
   SELECT sum(b)OVER(ORDER BY (SELECT b FROM t1 AS x 
                               WHERE b IN (t1.a,127,t1.b)
                               GROUP BY b))
     FROM t1
     GROUP BY a;
  END;
  CREATE TEMP TRIGGER x BEFORE INSERT ON t1 BEGIN
    UPDATE t1
       SET b=randomblob(10)
     WHERE b >= 'E'
       AND a < (SELECT a FROM t1 WHERE a<22 GROUP BY b);
  END;
  INSERT INTO t1(b) VALUES('Y'),('X'),('Z');
  SELECT a, CASE WHEN typeof(b)='text' THEN quote(b) ELSE '<blob>' END, '|' FROM t1;

