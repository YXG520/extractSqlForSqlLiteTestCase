

  CREATE VIRTUAL TABLE t1 USING fts3(a, b);
  INSERT INTO t1 VALUES('one', 'i');
  INSERT INTO t1 VALUES('one', 'ii');
  INSERT INTO t1 VALUES('two', 'i');
  INSERT INTO t1 VALUES('two', 'ii');



  SELECT a.a, b.b FROM t1 a, t1 b WHERE a.t1 MATCH 'two' AND b.t1 MATCH 'i'

