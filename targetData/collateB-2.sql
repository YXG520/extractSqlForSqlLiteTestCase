

  CREATE TABLE t4(a COLLATE binary);
  CREATE INDEX i4 ON t4(a);
  INSERT INTO t4 VALUES('one'), ('two'), ('three');
  VACUUM;

