
 CREATE TABLE t1(x) 



      BEGIN;
        INSERT INTO t1 VALUES(1);
    



      COMMIT;
      PRAGMA journal_mode = wal;
      INSERT INTO t1 VALUES(2);
    



    SELECT * FROM t1;
  


    DELETE FROM t1;
    PRAGMA journal_mode = delete;
  
