

    DROP TABLE t2;
    CREATE TABLE t2(a,b,c);
    INSERT INTO t2 VALUES(1,2,1);
    INSERT INTO t2 VALUES(2,3,2);
    INSERT INTO t2 VALUES(3,4,1);
    INSERT INTO t2 VALUES(4,5,4);
    SELECT c FROM t2 ORDER BY b;
    CREATE TABLE t3(x);
    INSERT INTO t3 VALUES(1);
  

pragma temp_store=file

      DROP TABLE t1;
      CREATE TABLE t1(a,b,c, PRIMARY KEY(a) $conf1) WITHOUT rowid;
      INSERT INTO t1 SELECT * FROM t2;
      UPDATE t3 SET x=0;
      BEGIN;
      $cmd t3 SET x=1;
      $cmd t1 SET b=b*2;
      $cmd t1 SET a=c+5;
    
COMMIT
SELECT a FROM t1 ORDER BY b
SELECT x FROM t3
