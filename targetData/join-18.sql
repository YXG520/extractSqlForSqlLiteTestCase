

  CREATE TABLE t0(a);
  CREATE TABLE t1(b);
  CREATE VIEW v0 AS SELECT a FROM t1 LEFT JOIN t0;
  INSERT INTO t1 VALUES (1);



  SELECT * FROM v0 WHERE NOT(v0.a IS FALSE);



  SELECT * FROM t1 LEFT JOIN t0 WHERE NOT(a IS FALSE);



  SELECT NOT(v0.a IS FALSE) FROM v0
