CREATE TABLE t1(x INT, y REAL);
  INSERT INTO t1 VALUES('1234','4567'),('0x1234','0x4567');
  SELECT typeof(x), x, typeof(y), y, '#' FROM t1 ORDER BY rowid;

SELECT CAST('0x1234' AS INTEGER);

SELECT 0x10000000000000000;

SELECT DISTINCT 0x10000000000000000;

SELECT DISTINCT -0x08000000000000000;

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1+0x10000000000000000);
