

  CREATE TABLE t0 (c0, c1 NOT NULL AS (c0==0));
  INSERT INTO t0(c0) VALUES (0);
  PRAGMA integrity_check;

