

  CREATE VIRTUAL TABLE t1 USING fts3;
  BEGIN;
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
  COMMIT;


 UPDATE t1_segdir SET root = $blob 


  SELECT rowid FROM t1 WHERE t1 MATCH 'hello'


