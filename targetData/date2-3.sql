

  CREATE TABLE t3(a INTEGER PRIMARY KEY,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
    INSERT INTO t3(a,b) SELECT x, julianday('2017-07-01')+x FROM c;
  UPDATE t3 SET b='now' WHERE a=500;



  CREATE INDEX t3b1 ON t3(datetime(b));



  CREATE INDEX t3b1 ON t3(datetime(b)) WHERE typeof(b)='real';



  EXPLAIN QUERY PLAN
  SELECT a FROM t3
   WHERE typeof(b)='real'
     AND datetime(b) BETWEEN '2017-07-04' AND '2017-07-08';



  SELECT a FROM t3
   WHERE typeof(b)='real'
     AND datetime(b) BETWEEN '2017-07-04' AND '2017-07-08'
  ORDER BY a;

