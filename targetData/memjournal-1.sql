

  PRAGMA journal_mode = memory;
  CREATE TABLE t1(a);



  BEGIN;
    INSERT INTO t1 VALUES( randomblob(500) );



      SAVEPOINT one;
      UPDATE t1 SET a=randomblob(500);
    
 SAVEPOINT abc 
 UPDATE t1 SET a=randomblob(500) WHERE rowid<=$i AND 0 
 RELEASE abc 


  COMMIT;

