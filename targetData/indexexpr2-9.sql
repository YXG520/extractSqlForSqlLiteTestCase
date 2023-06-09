

  CREATE TABLE t1(a INT, b INT);
  CREATE INDEX t1x ON t1(a, abs(b));
  CREATE TABLE t2(c INT, d INT);
  INSERT INTO t1(a,b) VALUES(4,4),(5,-5),(5,20),(6,6);
  INSERT INTO t2(c,d) VALUES(100,1),(200,1),(300,2);
  SELECT *,
    (SELECT max(c+abs(b)) FROM t2 GROUP BY d ORDER BY d LIMIT 1) AS subq
   FROM t1 WHERE a=5;

