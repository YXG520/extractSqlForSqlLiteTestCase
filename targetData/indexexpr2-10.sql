

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  CREATE INDEX t1x ON t1 (b, +b COLLATE NOCASE);
  INSERT INTO t1(a,b) VALUES(1,'abcde');
  SELECT * FROM t1 AS a0
   WHERE (SELECT count(a0.b=+a0.b COLLATE NOCASE IN (b)) FROM t1 GROUP BY 2.5)
   ORDER BY a0.b;



  CREATE TABLE t2(a TEXT);
  INSERT INTO t2 VALUES('alice'),('bob'),('cindy'),('david');
  CREATE INDEX t2x ON t2 (+a COLLATE NOCASE);
  SELECT count(+a COLLATE NOCASE IN (SELECT 1)) AS x
    FROM t2
   GROUP BY SUBSTR(0,0);

