

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('some text', 14, NULL);
  INSERT INTO t1 VALUES(22.0, NULL, x'656667');
  CREATE INDEX i1 ON t1(a, b, c);
  ANALYZE;
  SELECT test_decode(sample) FROM sqlite_stat4;

