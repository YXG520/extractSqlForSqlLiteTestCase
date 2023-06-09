

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1("with space" TEXT);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2 AS SELECT "with space" FROM t1;
  PRAGMA table_info(t2);



  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3 AS SELECT "with space" FROM t1 GROUP BY 1;
  PRAGMA table_info(t3);

