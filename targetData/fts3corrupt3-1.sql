

  PRAGMA page_size = 512;
  CREATE VIRTUAL TABLE t1 USING fts3;
  BEGIN;
    INSERT INTO t1 VALUES('one');
    INSERT INTO t1 VALUES('one');
    INSERT INTO t1 VALUES('one');
  COMMIT;



  SELECT quote(root) from t1_segdir;



  UPDATE t1_segdir SET root = X'00036F6E650EFFFFFFFFFFFFFFFFFFFFFFFF0200';



  SELECT rowid FROM t1 WHERE t1 MATCH 'one'

