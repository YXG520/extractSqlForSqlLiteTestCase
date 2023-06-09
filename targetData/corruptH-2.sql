

  PRAGMA auto_vacuum=0;
  PRAGMA page_size=1024;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');

  CREATE TABLE t3(x);

  CREATE TABLE t2(x PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t2 VALUES(randomblob(100));

  DROP TABLE t3;


 SELECT name, rootpage FROM sqlite_master 
 
    set r($name) $rootpage 
  

 SELECT * FROM t1 WHERE a IN (1, 2) 

    db eval { 
      INSERT INTO t2 SELECT randomblob(100) FROM t2;
      INSERT INTO t2 SELECT randomblob(100) FROM t2;
      INSERT INTO t2 SELECT randomblob(100) FROM t2;
      INSERT INTO t2 SELECT randomblob(100) FROM t2;
      INSERT INTO t2 SELECT randomblob(100) FROM t2;
    
