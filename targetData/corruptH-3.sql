

  PRAGMA page_size=1024;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');

  CREATE TABLE t2(c INTEGER PRAGMA KEY, d);
  INSERT INTO t2 VALUES(1, randomblob(1100));


 SELECT name, rootpage FROM sqlite_master 
 
    set r($name) $rootpage 
  

 SELECT * FROM t1 WHERE a IN (1, 2) 

    db eval { 
      DELETE FROM t2 WHERE c=1;
    
