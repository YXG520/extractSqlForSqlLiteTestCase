

  PRAGMA page_size=1024;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');

  CREATE TABLE t2(x);
  INSERT INTO t2 VALUES(randomblob(200));
  INSERT INTO t2 SELECT randomblob(200) FROM t2;
  INSERT INTO t2 SELECT randomblob(200) FROM t2;
  INSERT INTO t2 SELECT randomblob(200) FROM t2;
  INSERT INTO t2 SELECT randomblob(200) FROM t2;
  INSERT INTO t2 SELECT randomblob(200) FROM t2;
  INSERT INTO t2 SELECT randomblob(200) FROM t2;


 SELECT name, rootpage FROM sqlite_master 
 
    set r($name) $rootpage 
  

 PRAGMA secure_delete=1 
 SELECT * FROM t1 WHERE a IN (1, 2) 

      db eval { DELETE FROM t2 
