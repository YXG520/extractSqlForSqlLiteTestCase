

  PRAGMA page_size = 16384;
  BEGIN;
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  COMMIT;

