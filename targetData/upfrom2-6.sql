

  CREATE TABLE t1(a); 



  UPDATE t1 SET a = 1 FROM (
      SELECT * FROM t1
  )



  UPDATE t1 SET a = 1 FROM (
      SELECT * FROM t1 UNION ALL SELECT * FROM t1
  )

