

  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(a_string(3000));
  CREATE TABLE t2(a);
  INSERT INTO t2 VALUES(1);



 INSERT INTO t1 VALUES(a_string(3000)) 

 INSERT INTO t2 VALUES(2) 




  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(a_string(3000));
  CREATE TABLE t2(a);
  INSERT INTO t2 VALUES(1);



 INSERT INTO t1 VALUES(a_string(3000)) 

 
  PRAGMA integrity_check;
  BEGIN;
    INSERT INTO t2 VALUES(2);
    SAVEPOINT a;
      INSERT INTO t2 VALUES(3);
    ROLLBACK TO a;


 COMMIT 

