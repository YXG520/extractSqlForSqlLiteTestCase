

  CREATE TABLE t1(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t1 VALUES(1,2);
  CREATE TABLE t3_a(k INTEGER PRIMARY KEY, v TEXT);
  INSERT INTO t3_a VALUES(2,'ii');
  CREATE TABLE t3_b(k INTEGER PRIMARY KEY, v TEXT);
  CREATE VIEW t3 AS
    SELECT * FROM t3_a
    UNION ALL
    SELECT * FROM t3_b;



  SELECT * FROM t1, t3 ORDER BY k;

