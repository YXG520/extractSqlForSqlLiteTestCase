

CREATE TABLE t1(a INT, b INT, c INT, d INT);
  WITH RECURSIVE c(x) AS (VALUES(0) UNION ALL SELECT x+1 FROM c WHERE x<10)
    INSERT INTO t1(a,b,c,d) SELECT x, x+100, x+200, x+300 FROM c;
  CREATE TABLE t2(b INT, x INT);
  INSERT INTO t2(b,x) SELECT b, a FROM t1 WHERE a%2=0;
  CREATE INDEX t2b ON t2(b);
  CREATE TABLE t3(c INT, y INT);
  INSERT INTO t3(c,y) SELECT c, a FROM t1 WHERE a%3=0;
  CREATE INDEX t3c ON t3(c);
  CREATE TABLE t4(d INT, z INT);
  INSERT INTO t4(d,z) SELECT d, a FROM t1 WHERE a%5=0;
  CREATE INDEX t4d ON t4(d);
  INSERT INTO t1(a,b,c,d) VALUES
    (96,NULL,296,396),
    (97,197,NULL,397),
    (98,198,298,NULL),
    (99,NULL,NULL,NULL);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t4','t4d','20 1');
  INSERT INTO sqlite_stat1 VALUES('t3','t3c','32 1');
  INSERT INTO sqlite_stat1 VALUES('t2','t2b','48 1');
  INSERT INTO sqlite_stat1 VALUES('t1',NULL,'100');
  ANALYZE sqlite_schema;



  WITH t0 AS MATERIALIZED (
    SELECT t1.*, t2.*, t3.*
      FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
        RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  )
  SELECT * FROM t0 FULL JOIN t4 ON t0.a=t4.d AND t4.z>0
   ORDER BY coalesce(t0.a, t0.y+200, t4.d);



  WITH t0 AS MATERIALIZED (
    SELECT t1.*, t2.*, t3.*
      FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
        RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  )
  SELECT * FROM t0 LEFT RIGHT JOIN t4 ON t0.a=t4.d AND t4.z>0
   ORDER BY coalesce(t0.a, t0.y+200, t4.d);



  EXPLAIN QUERY PLAN
  WITH t0 AS MATERIALIZED (
    SELECT t1.*, t2.*, t3.*
      FROM t1 INNER JOIN t2 ON t1.b=t2.b AND t2.x>0
        RIGHT JOIN t3 ON t1.c=t3.c AND t3.y>0
  )
  SELECT * FROM t0 FULL JOIN t4 ON t0.a=t4.d AND t4.z>0
   ORDER BY coalesce(t0.a, t0.y+200, t4.d);

