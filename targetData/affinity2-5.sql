

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0 TEXT UNIQUE, c1);
  INSERT INTO t0(c0) VALUES (-1);
  SELECT quote(- x'ce'), quote(t0.c0), quote(- x'ce' >= t0.c0) FROM t0;



  SELECT * FROM t0 WHERE - x'ce' >= t0.c0;



  SELECT quote(+-+x'ce'), quote(t0.c0), quote(+-+x'ce' >= t0.c0) FROM t0;



  SELECT * FROM t0 WHERE +-+x'ce' >= t0.c0;



  SELECT quote(- 'ce'), quote(t0.c0), quote(- 'ce' >= t0.c0) FROM t0;



  SELECT * FROM t0 WHERE - 'ce' >= t0.c0;



  SELECT quote(+-+'ce'), quote(t0.c0), quote(+-+'ce' >= t0.c0) FROM t0;



  SELECT * FROM t0 WHERE +-+'ce' >= t0.c0;

