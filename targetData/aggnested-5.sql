

  CREATE TABLE x1(a, b);
  INSERT INTO x1 VALUES(1, 2);
  CREATE TABLE x2(x);
  INSERT INTO x2 VALUES(NULL), (NULL), (NULL);



  SELECT ( SELECT total( (SELECT b FROM x1) ) ) FROM x2;



  SELECT ( SELECT total( (SELECT 2 FROM x1) ) ) FROM x2;



  CREATE TABLE t1(a);
  CREATE TABLE t2(b);



  SELECT(
    SELECT max(b) LIMIT (
      SELECT total( (SELECT a FROM t1) )
    )
  )
  FROM t2;



  CREATE TABLE a(b);
  WITH c AS(SELECT a)
    SELECT(SELECT(SELECT group_concat(b, b)
          LIMIT(SELECT 0.100000 *
            AVG(DISTINCT(SELECT 0 FROM a ORDER BY b, b, b))))
        FROM a GROUP BY b,
        b, b) FROM a EXCEPT SELECT b FROM a ORDER BY b,
    b, b;

