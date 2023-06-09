

  CREATE TABLE t1(f1);
  CREATE TABLE t2(f2);
  CREATE INDEX t2f ON t2(f2);

  INSERT INTO t1 VALUES(-1);
  INSERT INTO t1 VALUES(-1);
  INSERT INTO t1 VALUES(-1);
  INSERT INTO t1 VALUES(-1);

  WITH w(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM w WHERE i<1000
  )
  INSERT INTO t2 SELECT -1 FROM w;



  SELECT count(*) FROM t1, t2 WHERE t2.rowid = +t1.rowid




  SELECT count(*) FROM t1, t2 WHERE (
    t2.rowid = +t1.rowid OR t2.f2 = t1.f1
  )




  SELECT count(*) FROM t1, t2 WHERE (
    t2.rowid = +t1.rowid OR (t2.f2 = t1.f1 AND t1.f1!=-1)
  )


