

  CREATE VIRTUAL TABLE t2 USING fts3;
  BEGIN;
    INSERT INTO t2 VALUES($doc1);
    INSERT INTO t2 VALUES($doc2);
    INSERT INTO t2 VALUES($doc3);
  COMMIT;



  SELECT quote(root) from t2_segdir;

