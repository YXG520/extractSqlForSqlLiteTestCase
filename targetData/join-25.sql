

  CREATE TABLE t0(c0 INT);
  CREATE VIEW v0 AS SELECT (NULL AND 5) as c0 FROM t0;
  INSERT INTO t0(c0) VALUES (NULL);
  SELECT count(*)  FROM v0 LEFT JOIN t0 ON v0.c0;
