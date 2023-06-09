

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(i INT PRIMARY KEY, a, b);
  INSERT INTO t1 VALUES(NULL,'one','i');
  CREATE INDEX i1a ON t1(a);
  CREATE INDEX i1b ON t1(b);
  SELECT (SELECT 1
            FROM (SELECT 1 FROM t1 WHERE a=1 OR b='i')
           WHERE a='o'
              OR b IN (SELECT a=('b' IN (SELECT 'a'))))
    FROM t1;

