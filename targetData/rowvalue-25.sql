

  DROP TABLE t0;
  CREATE TABLE t0(c0 UNIQUE);
  INSERT INTO t0(c0) VALUES('a');
  SELECT (t0.c0, 0) < ('B' COLLATE NOCASE, 0) FROM t0;
  SELECT 2 FROM t0 WHERE (t0.c0, 0) < ('B' COLLATE NOCASE, 0);



  SELECT ('B' COLLATE NOCASE, 0)> (t0.c0, 0) FROM t0;
  SELECT 2 FROM t0 WHERE ('B' COLLATE NOCASE, 0)> (t0.c0, 0);



  SELECT ('B', 0)> (t0.c0 COLLATE nocase, 0) FROM t0;
  SELECT 2 FROM t0 WHERE ('B', 0)> (t0.c0 COLLATE nocase, 0);



  SELECT (t0.c0 COLLATE nocase, 0) < ('B', 0) FROM t0;
  SELECT 2 FROM t0 WHERE (t0.c0 COLLATE nocase, 0) < ('B', 0);

