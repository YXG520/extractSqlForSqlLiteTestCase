

  SELECT ' ' > char(20) COLLATE rtrim;



  SELECT '' < char(20) COLLATE rtrim;



  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0 COLLATE RTRIM, c1 BLOB UNIQUE,
                  PRIMARY KEY (c0, c1)) WITHOUT ROWID;
  INSERT INTO t0 VALUES (123, 3), (' ', 1), ('	', 2), ('', 4);
  SELECT * FROM t0 WHERE c1 = 1;

