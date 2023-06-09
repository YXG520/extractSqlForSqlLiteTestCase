

      BEGIN;
      CREATE TABLE t1(a, b);
      CREATE INDEX i1 ON t1(a, b);
      INSERT INTO t1 VALUES(1, randstr(1000,1000));
      INSERT INTO t1 VALUES(2, randstr(1000,1000));
      INSERT INTO t1 VALUES(3, randstr(1000,1000));
      INSERT INTO t1 VALUES(4, randstr(1000,1000));
      INSERT INTO t1 VALUES(5, randstr(1000,1000));
      COMMIT;
    
PRAGMA page_count


 UPDATE t1 SET a = a + 1 

B


      PRAGMA cache_size = 10;
      BEGIN;
      INSERT INTO t1 SELECT '', randstr(1000,1000) FROM t1;
      INSERT INTO t1 SELECT '', randstr(1000,1000) FROM t1;
      INSERT INTO t1 SELECT '', randstr(1000,1000) FROM t1;
      INSERT INTO t1 SELECT '', randstr(1000,1000) FROM t1;
      COMMIT;
    


 
      BEGIN;
      UPDATE t1 SET a = a + 1;
      ROLLBACK;
    

B

 UPDATE t1 SET b = randstr(1000,1000) 


 VACUUM 

B

 UPDATE t1 SET b = randstr(1000,1000) 


 
      PRAGMA page_size = 2048;
      VACUUM;
    

B


      PRAGMA auto_vacuum = incremental;
      BEGIN;
      CREATE TABLE t1(a, b);
      CREATE INDEX i1 ON t1(a, b);
      INSERT INTO t1 VALUES(1, randstr(1000,1000));
      INSERT INTO t1 VALUES(2, randstr(1000,1000));
      INSERT INTO t1 VALUES(3, randstr(1000,1000));
      INSERT INTO t1 VALUES(4, randstr(1000,1000));
      INSERT INTO t1 VALUES(5, randstr(1000,1000));
      COMMIT;
    


 
      DELETE FROM t1;
      PRAGMA incremental_vacuum;
    

B
