

  CREATE TABLE t1(a,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
    INSERT INTO t1(a,b) SELECT 1, (x*17)%1000 + 1000 FROM c;
  INSERT INTO t1(a,b) VALUES(2,2),(3,1006),(4,4),(5,9999);
  CREATE INDEX t1ab ON t1(a,b);



  CREATE TABLE t2(x,y);
  INSERT INTO t2(x,y) VALUES('a',1),('a',2),('a',3),('a',4);
  INSERT INTO t2(x,y) VALUES('b',1),('c',2),('d',3),('e',4);
  CREATE INDEX t2xy ON t2(x,y);



  DROP INDEX t1ab;
  CREATE INDEX t1ab ON t1(a,b DESC);

