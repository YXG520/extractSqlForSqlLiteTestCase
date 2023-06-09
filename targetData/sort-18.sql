

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<50)
                           -- increase to 5000 for actual test data ----^^
    INSERT INTO t1(a,b,c) SELECT x, random()%5000, random()%5000 FROM c;
  CREATE TABLE t2(d,e,f);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<500)
                         -- increase to 50000 for actual test data -----^^^
    INSERT INTO t2(d,e,f) SELECT
       NULLIF(0, random()%2), random()%5000, random()%5000
       FROM c;
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='50000' WHERE tbl='t2';
  UPDATE sqlite_stat1 SET stat='5000' WHERE tbl='t1';
  ANALYZE sqlite_schema;



  EXPLAIN QUERY PLAN
  SELECT a FROM t1 JOIN t2
   WHERE a IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
     AND a=CASE WHEN d IS NOT NULL THEN e ELSE f END
   ORDER BY a;

