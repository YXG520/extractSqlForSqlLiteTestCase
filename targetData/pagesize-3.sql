

  BEGIN;
  SELECT * FROM sqlite_master;
  PRAGMA page_size=2048;
  PRAGMA main.page_size;



  CREATE TABLE t1(x);
  COMMIT;



  BEGIN;
    PRAGMA page_size = 2048;
  COMMIT;
  PRAGMA main.page_size;

