

  CREATE VIRTUAL TABLE t14 USING fts4(a, b);
  INSERT INTO t14 VALUES('one two three', 'one three four');
  INSERT INTO t14 VALUES('a b c', 'd e a');



  SELECT rowid FROM t14 WHERE t14 MATCH '"one two three"'



  SELECT rowid FROM t14 WHERE t14 MATCH '"one four"'



  SELECT rowid FROM t14 WHERE t14 MATCH '"e a"'



  SELECT rowid FROM t14 WHERE t14 MATCH '"e b"'



  SELECT rowid FROM t14 WHERE rowid MATCH 'one'


