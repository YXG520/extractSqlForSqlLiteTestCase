

     PRAGMA auto_vacuum=OFF;
     CREATE TABLE t1(x);
  

     PRAGMA auto_vacuum=OFF;
     CREATE TABLE t2(x)
  


        BEGIN;
        INSERT INTO t2 VALUES(2);
     

        INSERT INTO t1 VALUES(2);
     

     BEGIN EXCLUSIVE;
     INSERT INTO t1 VALUES(1);
  

    INSERT INTO t2 VALUES(1)
  


     COMMIT;
  

     SELECT * FROM t2
  
