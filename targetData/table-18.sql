

  DROP TABLE IF EXISTS t1;
  BEGIN;
  CREATE TABLE t1 AS SELECT zeroblob(2e20);



  COMMIT;
  PRAGMA integrity_check;

