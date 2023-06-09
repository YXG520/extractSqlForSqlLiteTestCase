

  SELECT *, '|' FROM generate_series WHERE start=1 AND stop=9 AND step=2;



  PRAGMA table_xinfo(generate_series);



  SELECT *, '|' FROM generate_series(0) LIMIT 5;



  SELECT *, '|' FROM generate_series LIMIT 5;



  SELECT *, '|' FROM generate_series(value) LIMIT 5;



  CREATE VIRTUAL TABLE t1 USING generate_series;



  SELECT * FROM generate_series(1,9,2);



  SELECT * FROM generate_series(1,9);



  SELECT * FROM generate_series(1,10) WHERE step=3;



  SELECT * FROM generate_series(1,9,2,11);



  SELECT * FROM generate_series(0,32,5) ORDER BY rowid DESC;



  SELECT rowid, * FROM generate_series(0,32,5) ORDER BY value DESC;



  SELECT rowid, * FROM generate_series(0,32,5) ORDER BY +value DESC;



  CREATE VIEW v1(a,b) AS VALUES(1,2),(3,4);
  SELECT * FROM v1;



  SELECT * FROM v1(55);



  SELECT * FROM v1();



  CREATE VIEW v2(x) AS SELECT value FROM generate_series(1,5);
  SELECT * FROM v2;



  SELECT * FROM v2(55);



  SELECT * FROM v2();



  CREATE TABLE t0(x);
  INSERT INTO t0(x) VALUES(123),(456),(789);
  SELECT * FROM t0 ORDER BY x;



  SELECT * FROM t0(55) ORDER BY x;



  WITH w0 AS (SELECT * FROM t0)
  INSERT INTO t0(x) SELECT * FROM w0()

