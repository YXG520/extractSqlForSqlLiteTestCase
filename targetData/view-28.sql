

  CREATE TABLE t0(c0 TEXT);
  CREATE VIEW v0(c0) AS SELECT t0.c0 FROM t0;
  INSERT INTO t0(c0) VALUES ('0');



  SELECT 0 IN (c0) FROM t0;



  SELECT 0 IN (c0) FROM (SELECT c0 FROM t0);
