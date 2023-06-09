

  CREATE TABLE t1x(i INTEGER PRIMARY KEY, a, b);
  INSERT INTO t1x VALUES(1, 'one', 1);
  INSERT INTO t1x VALUES(2, 'two', 2);
  INSERT INTO t1x VALUES(3, 'three', 3);
  INSERT INTO t1x VALUES(4, 'four', 4);


SELECT * FROM t1
one 1 two 2 three 3 four 4

SELECT rowid FROM t1
1 2 3 4

SELECT rowid FROM t1 WHERE a='two'
2


    SELECT rowid FROM t1 WHERE a IN ('one', 'four') ORDER BY +rowid
  

SELECT rowid, * FROM t1
SELECT rowid, * FROM t1 WHERE [join $W { AND }]
