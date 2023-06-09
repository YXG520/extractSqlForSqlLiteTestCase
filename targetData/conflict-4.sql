

    DROP TABLE t2;
    CREATE TABLE t2(x);
    SELECT x FROM t2;
  


      DROP TABLE t1;
      CREATE TABLE t1(a,b,c,UNIQUE(a,b) $conf1);
      DELETE FROM t2;
      INSERT INTO t1 VALUES(1,2,3);
      BEGIN;
      INSERT INTO t2 VALUES(1); 
      $cmd INTO t1 VALUES(1,2,4);
    
COMMIT
SELECT c FROM t1
SELECT x FROM t2
