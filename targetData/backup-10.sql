

      BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, randstr(1000,1000));
      INSERT INTO t1 VALUES(2, randstr(1000,1000));
      INSERT INTO t1 VALUES(3, randstr(1000,1000));
      INSERT INTO t1 VALUES(4, randstr(1000,1000));
      INSERT INTO t1 VALUES(5, randstr(1000,1000));
      CREATE INDEX i1 ON t1(a, b);
      COMMIT;
    



      UPDATE t1 SET b = randstr(500,500);
    

B

B

 PRAGMA integrity_check 

 
      CREATE TABLE t1(a INTEGER PRIMARY KEY, b BLOB);
      BEGIN;
        INSERT INTO t1 VALUES(NULL, randomblob(200));
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
        INSERT INTO t1 SELECT NULL, randomblob(200) FROM t1;
      COMMIT;
      SELECT count(*) FROM t1;
    

pragma page_count


 UPDATE t1 SET b = randomblob(200) WHERE a IN (1, 250) 

B

B
