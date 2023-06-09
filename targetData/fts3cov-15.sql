

  CREATE VIRTUAL TABLE t15 USING fts4(a, b, c);
  INSERT INTO t15 VALUES('abc def ghi', 'abc2 def2 ghi2', 'abc3 def3 ghi3');
  INSERT INTO t15 VALUES('abc2 def2 ghi2', 'abc2 def2 ghi2', 'abc def3 ghi3');



  SELECT rowid FROM t15 WHERE t15 MATCH '"abc* def2"'

