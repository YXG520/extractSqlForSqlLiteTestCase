

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(1,'one'),(4,'four');
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t2 VALUES(2,'two'),(5,'five');
  CREATE VIEW t3 AS SELECT a, b FROM t1 UNION ALL SELECT c, d FROM t2;
  SELECT count(*) FROM t3 HAVING count(*)>0;



  SELECT count(*) FROM t3 HAVING count(*)>5;



  SELECT count(*) FROM t3 HAVING max(b)>'mmm';



  SELECT count(*) FROM t3 HAVING min(b)>'mmm';



  SELECT count(*) FROM (
     SELECT a, max(b) FROM t1 HAVING a<100 UNION ALL SELECT c, d FROM t2
  )

