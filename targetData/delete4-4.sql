

  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1);
  INSERT INTO "t4" VALUES(14, 'abcde');
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  CREATE INDEX idx_t4_3 ON t4 (col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;



  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1);
  INSERT INTO "t4" VALUES(14, 'abcde');
  CREATE INDEX idx_t4_3 ON t4 (col0);
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;



  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1, pk PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t4 VALUES(14, 'abcde','xyzzy');
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  CREATE INDEX idx_t4_3 ON t4 (col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;



  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1, pk PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t4 VALUES(14, 'abcde','xyzzy');
  CREATE INDEX idx_t4_3 ON t4 (col0);
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;

