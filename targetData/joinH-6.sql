

  CREATE TABLE t1(a INT);
  CREATE TABLE t2(b INT);
  INSERT INTO t1 VALUES(3);
  SELECT CASE WHEN t2.b THEN 0 ELSE 1 END FROM t1 LEFT JOIN t2 ON true;



  SELECT * FROM t1 LEFT JOIN t2 ON true WHERE CASE WHEN t2.b THEN 0 ELSE 1 END;
