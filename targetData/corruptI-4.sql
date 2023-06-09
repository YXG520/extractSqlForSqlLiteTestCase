

  PRAGMA page_size = 65536;
  PRAGMA autovacuum = 0;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(-1, 'abcdefghij');
  INSERT INTO t1 VALUES(0, 'abcdefghij');


 DELETE FROM t1 WHERE a=0 
