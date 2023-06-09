

    BEGIN;
    DROP TABLE blobs;
    CREATE TABLE t1 (a, b, c, d BLOB);
    INSERT INTO t1(a, b, c, d) VALUES(1, 2, 3, 4);
    COMMIT;
  

    UPDATE t1 SET d = zeroblob(10000);
  



      UPDATE t1 SET d = 15;
    



      SELECT d FROM t1;
    



      SELECT d FROM t1;
    


    PRAGMA auto_vacuum = "incremental";
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);        -- root@page3
    INSERT INTO t1 VALUES(123, $::data);
  


    CREATE TABLE t2(a INTEGER PRIMARY KEY, b);        -- root@page4
  


    SELECT rootpage FROM sqlite_master;
  


    INSERT INTO t2 VALUES(456, $::otherdata);
  



    DELETE FROM t1 WHERE a = 123;
    PRAGMA INCREMENTAL_VACUUM(0);
  



