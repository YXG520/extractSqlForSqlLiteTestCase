

  CREATE TABLE t1(aa,bb);
  CREATE TABLE IF NOT EXISTS t1(aa, bb AS (aa+1));
  PRAGMA integrity_check;

