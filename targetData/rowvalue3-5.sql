

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE T1(a TEXT);
  INSERT INTO T1(a) VALUES ('aaa');
  CREATE TABLE T2(a TEXT PRIMARY KEY,n INT);
  INSERT INTO T2(a, n) VALUES('aaa',0);
  SELECT * FROM T2
   WHERE (a,n) IN (SELECT T1.a, V.n
                     FROM T1, (SELECT * FROM (SELECT 0 n) T3) V);
