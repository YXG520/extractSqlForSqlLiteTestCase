

  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a TEXT UNIQUE, b INT DEFAULT 1);
  INSERT INTO t2(a) VALUES('one'),('two'),('three');
  PRAGMA count_changes=ON;
  INSERT INTO t2(a) VALUES('one'),('one'),('three'),('four')
      ON CONFLICT(a) DO UPDATE SET b=b+1;



  PRAGMA count_changes=OFF;
  SELECT a, b FROM t2 ORDER BY a;

