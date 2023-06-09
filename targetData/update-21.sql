

  CREATE TABLE t1 (vkey INTEGER, c5 INTEGER);
  INSERT INTO t1 VALUES(3,NULL),(6,-54);



  BEGIN;
  UPDATE t1 SET vkey = 100 WHERE c5 is null;
  SELECT * FROM t1 ORDER BY vkey, c5;
  ROLLBACK;



  BEGIN;
  UPDATE t1 SET vkey = 100 WHERE NOT (-10*(select min(vkey) from t1) >= c5);
  SELECT * FROM t1 ORDER BY vkey, c5;
  ROLLBACK;



  BEGIN;
  UPDATE t1 SET vkey = 100 WHERE c5 is null OR NOT (-10*(select min(vkey) from t1) >= c5);
  SELECT * FROM t1 ORDER BY vkey, c5;
  ROLLBACK;

