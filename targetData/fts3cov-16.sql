

  CREATE VIRTUAL TABLE t16 USING fts4;
  INSERT INTO t16 VALUES('theoretical work to examine the relationship');
  INSERT INTO t16 VALUES('solution of our problems on the invisible');
  DELETE FROM t16_content WHERE rowid = 2;



  SELECT * FROM t16 WHERE t16 MATCH 'invisible'

