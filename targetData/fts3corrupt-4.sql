

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts3;
  INSERT INTO t1(t1) VALUES('nodesize=24');


 INSERT INTO t1 VALUES($s) 


  UPDATE t1_segdir SET root = X'FFFFFFFFFFFFFFFF';
  SELECT rowid FROM t1 WHERE t1 MATCH 'world';




  UPDATE t1_segdir SET root = $blob;
  SELECT rowid FROM t1 WHERE t1 MATCH 'world';


