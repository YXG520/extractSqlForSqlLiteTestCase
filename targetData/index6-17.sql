

  CREATE TABLE t0(c0);
  CREATE INDEX i0 ON t0(0) WHERE c0 GLOB c0;
  INSERT INTO t0 VALUES (0);
  CREATE UNIQUE INDEX i1 ON t0(0);
  PRAGMA integrity_check;



  CREATE UNIQUE INDEX i2 ON t0(0);
  REPLACE INTO t0 VALUES(0);
  PRAGMA integrity_check;



  SELECT COUNT(*) FROM t0 WHERE t0.c0 GLOB t0.c0;
