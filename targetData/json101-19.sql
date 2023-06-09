

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);



  BEGIN;
  INSERT INTO t1 VALUES(0), (json('not-valid-json'));



  COMMIT;
  SELECT * FROM t1;

