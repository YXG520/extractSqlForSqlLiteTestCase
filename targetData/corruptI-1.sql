

  PRAGMA page_size=1024;
  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES('abcdefghijklmnop');


 SELECT * FROM t1 WHERE a = 10 

 SELECT * FROM t1 WHERE a = 10 
