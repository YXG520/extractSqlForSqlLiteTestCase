

  CREATE TABLE t0(c0 TEXT);
  CREATE VIEW v0(c0, c1) 
    AS SELECT CUME_DIST() OVER (PARTITION BY t0.c0), TRUE FROM t0;
  INSERT INTO t0 VALUES ('x');



  SELECT ('500') IS (v0.c1) FROM v0;



  SELECT (('500') IS (v0.c1)) FROM v0, t0;



  SELECT (('500') IS (v0.c1)) IS FALSE FROM v0;



  SELECT * FROM v0;



  SELECT * FROM v0 WHERE ('500' IS v0.c1) IS FALSE;

