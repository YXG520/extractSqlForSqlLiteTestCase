

  CREATE TABLE t0(c0 UNIQUE AS(0), c1, c2);
  INSERT INTO t0(c1) VALUES(0);
  SELECT * FROM t0;



  UPDATE t0 SET c1=0, c2=0 WHERE c0>=0;
  SELECT * FROM t0;

