

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  INSERT INTO t1 VALUES(3, 'three');
  INSERT INTO t1 VALUES(4, 'four');


  1 "SELECT b FROM t1"                   {one two three four
