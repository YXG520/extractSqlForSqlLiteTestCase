

  CREATE TABLE t1(a INT,b INT,c INT);  INSERT INTO t1 VALUES(NULL,NULL,NULL);
  CREATE TABLE t2(d INT,e INT);        INSERT INTO t2 VALUES(NULL,NULL);
  CREATE INDEX x2 ON t1(c,b);
  CREATE TABLE t3(x INT);              INSERT INTO t3 VALUES(NULL);



  WITH t99(b) AS MATERIALIZED (
    SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT 5 FROM t2 JOIN t99 ON b IN (1,2,3);



  WITH t99(b) AS NOT MATERIALIZED (
    SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT 5 FROM t2 JOIN t99 ON b IN (1,2,3);



  WITH t99(b) AS (SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3))
  SELECT 5 FROM t2 JOIN t99 ON b IN (1,2,3);



  SELECT 5
    FROM t2 JOIN (
       SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3)
    ) AS t99 ON b IN (1,2,3);



  INSERT INTO t1 VALUES(3,4,NULL);
  INSERT INTO t2 VALUES(1,2);
  WITH t99(b) AS (
    SELECT coalesce(b,3) FROM t2 AS x LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT d, e, b FROM t2 JOIN t99 ON b IN (1,2,3) ORDER BY +d;



  SELECT d, e, b2
    FROM t2 
         JOIN (SELECT coalesce(b,3) AS b2 FROM t2 AS x LEFT JOIN t1
                ON c IN (SELECT x FROM t3)) AS t99
            ON b2 IN (1,2,3) ORDER BY +d;



  DELETE FROM t1;
  DELETE FROM t2 WHERE d IS NOT NULL;
  DELETE FROM t3;
  SELECT * FROM t2 JOIN (SELECT b FROM t2 LEFT JOIN t1
                       ON c IN (SELECT x FROM t3)) AS t99 ON b IN (1,2,3);



  DELETE FROM t1;
  DELETE FROM t2;
  DELETE FROM t3;
  INSERT INTO t1 VALUES(4,3,5);
  INSERT INTO t2 VALUES(1,2);
  INSERT INTO t3 VALUES(5);
  SELECT * FROM t2 JOIN (SELECT b FROM t2 LEFT JOIN t1
                       ON c IN (SELECT x FROM t3)) AS t99 ON b IS NULL;



  WITH t99(b) AS (
    SELECT b FROM t2 AS x LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT d, e, b FROM t2 JOIN t99 ON b IS NULL;

