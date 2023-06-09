

    DROP TABLE t2;
    CREATE TABLE t2(x);
    SELECT x FROM t2;
  


      DROP TABLE t1;
      CREATE TABLE t1(a,b,c NOT NULL $conf1 DEFAULT 5);
      DELETE FROM t2;
      BEGIN;
      INSERT INTO t2 VALUES(1); 
      $cmd INTO t1 VALUES(1,2,NULL);
    
COMMIT
SELECT c FROM t1
SELECT x FROM t2
