

  CREATE TABLE t1(a, b, PRIMARY KEY(a, b)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(2, 4);
  INSERT INTO t1 VALUES(1, 5);
  DELETE FROM t1 WHERE a=1;
  SELECT printf('(%d)',changes());
  SELECT * FROM t1;



  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
     INSERT INTO t1(a,b) SELECT x, x+1 FROM c;
  SELECT printf('(%d)',changes());
  DELETE FROM t1;
  SELECT printf('(%d)',changes());



  CREATE TABLE t1(i INTEGER PRIMARY KEY, a, b);
  CREATE INDEX i1a ON t1(a);
  CREATE INDEX i1b ON t1(b);
  INSERT INTO t1 VALUES(1, 'one', 'i');
  INSERT INTO t1 VALUES(2, 'two', 'ii');
  INSERT INTO t1 VALUES(3, 'three', 'iii');
  INSERT INTO t1 VALUES(4, 'four', 'iv');
  INSERT INTO t1 VALUES(5, 'one', 'i');
  INSERT INTO t1 VALUES(6, 'two', 'ii');
  INSERT INTO t1 VALUES(7, 'three', 'iii');
  INSERT INTO t1 VALUES(8, 'four', 'iv');



  DELETE FROM t1 WHERE a='two' OR b='iv';



  SELECT i FROM t1 ORDER BY i;


 
  PRAGMA integrity_check; 

