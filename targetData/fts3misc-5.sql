

  CREATE VIRTUAL TABLE t5 USING fts4;
  INSERT INTO t5 VALUES('a x x x x b x x x x c');
  INSERT INTO t5 VALUES('a x x x x b x x x x c');
  INSERT INTO t5 VALUES('a x x x x b x x x x c');



  SELECT rowid FROM t5 WHERE t5 MATCH 'a NEAR/4 b NEAR/4 c'



  SELECT rowid FROM t5 WHERE t5 MATCH 'a NEAR/3 b NEAR/4 c'



  SELECT rowid FROM t5 WHERE t5 MATCH 'a NEAR/4 b NEAR/3 c'



  SELECT rowid FROM t5 WHERE t5 MATCH 'y NEAR/4 b NEAR/4 c'



  SELECT rowid FROM t5 WHERE t5 MATCH 'x OR a NEAR/3 b NEAR/3 c'



  SELECT rowid FROM t5 WHERE t5 MATCH 'x OR y NEAR/3 b NEAR/3 c'

