

  CREATE TABLE t4(m CHAR(2));
  INSERT INTO t4 VALUES('az');
  INSERT INTO t4 VALUES('by');
  INSERT INTO t4 VALUES('cx');
  SELECT '1', substr(m,2) AS m FROM t4 ORDER BY m;
  SELECT '2', substr(m,2) AS m FROM t4 ORDER BY m COLLATE binary;
  SELECT '3', substr(m,2) AS m FROM t4 ORDER BY lower(m);

