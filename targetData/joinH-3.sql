

  CREATE TABLE t0 (c0);
  CREATE TABLE t1 (c0);
  CREATE TABLE t2 (c0 , c1 , c2 , UNIQUE (c0), UNIQUE (c2 DESC));
  INSERT INTO t2 VALUES ('x', 'y', 'z');
  ANALYZE;
  CREATE VIEW v0(c0) AS SELECT FALSE;



  SELECT * FROM t0 LEFT OUTER JOIN t1 ON v0.c0 INNER JOIN v0 INNER JOIN t2 ON (t2.c2 NOT NULL); 

