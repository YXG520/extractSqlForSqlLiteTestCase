

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(NULL, 1, 'x');
  CREATE INDEX i1 ON t1(a);



  SELECT min(a), b, c FROM t1 WHERE c='x';



  INSERT INTO t1 VALUES(1,    2, 'y');



  SELECT min(a), b, c FROM t1 WHERE c='x';



  CREATE TABLE t0(c0 UNIQUE, c1);
  INSERT INTO t0(c1) VALUES (0);
  INSERT INTO t0(c0) VALUES (0);
  CREATE VIEW v0(c0, c1) AS 
      SELECT t0.c1, t0.c0 FROM t0 WHERE CAST(t0.rowid AS INT) = 1;



  SELECT c0, c1 FROM v0;



  SELECT v0.c0, MIN(v0.c1) FROM v0;

