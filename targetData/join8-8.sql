

  CREATE TABLE t1(a INT, b INT);
  CREATE TABLE t2(c INT, d INT);
  CREATE TABLE t3(e INT, f INT);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t2 VALUES(3, 4);
  INSERT INTO t3 VALUES(5, 6);



  SELECT *
    FROM t3 LEFT JOIN t2 ON true
            JOIN t1 ON (t3.e IS t2.c);



  SELECT *
    FROM t3 LEFT JOIN t2 ON true
            JOIN t1 ON (t3.e IS NOT DISTINCT FROM t2.c);

