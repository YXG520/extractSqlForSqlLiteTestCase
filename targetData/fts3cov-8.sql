

  BEGIN;
    CREATE VIRTUAL TABLE t8 USING fts3;
    INSERT INTO t8 VALUES('the output of each batch run');
    INSERT INTO t8 VALUES('(possibly a day''s work)');
    INSERT INTO t8 VALUES('was written to two separate disks');
  COMMIT;


  BEGIN;
    DELETE FROM t8 WHERE rowid = 3;
    DELETE FROM t8 WHERE rowid = 2;
    DELETE FROM t8 WHERE rowid = 1;
  COMMIT;

