

  CREATE TABLE t1(a INT, b INT);
  INSERT INTO t1(a) VALUES(2);
  CREATE TABLE t2(c INT);
  CREATE INDEX i0 ON t2(c) WHERE c=3;
  CREATE TABLE t3(d INT);
  INSERT INTO t3 VALUES(1);



  SELECT * FROM t2 RIGHT JOIN t3 ON d<>0 LEFT JOIN t1 ON c=3 WHERE t1.a<>0;

