
 PRAGMA auto_vacuum = incremental 

    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1(a) VALUES('alligator');
      INSERT INTO t1(a) VALUES('angelfish');
      INSERT INTO t1(a) VALUES('ant');
      INSERT INTO t1(a) VALUES('antelope');
      INSERT INTO t1(a) VALUES('ape');
      INSERT INTO t1(a) VALUES('baboon');
      INSERT INTO t1(a) VALUES('badger');
      INSERT INTO t1(a) VALUES('bear');
      INSERT INTO t1(a) VALUES('beetle');
      INSERT INTO t1(a) VALUES('bird');
      INSERT INTO t1(a) VALUES('bison');
      UPDATE t1 SET b =    randstr(1000,1000);
      UPDATE t1 SET b = b||randstr(1000,1000);
      UPDATE t1 SET b = b||randstr(1000,1000);
      UPDATE t1 SET b = b||randstr(10,1000);
    COMMIT;
  
 PRAGMA page_count 


    BEGIN;
      SAVEPOINT one;
      CREATE TABLE t2(a, b);
      INSERT INTO t2 SELECT a, b FROM t1;
      ROLLBACK TO one;
  

    PRAGMA integrity_check;
  


    COMMIT;
    PRAGMA integrity_check;
  


    CREATE TABLE t2(a, b);
    INSERT INTO t2 SELECT a, b FROM t1;
  


    BEGIN;
      SAVEPOINT one;
        DELETE FROM t2;
        PRAGMA incremental_vacuum;
        SAVEPOINT two;
          INSERT INTO t2 SELECT a, b FROM t1;
        ROLLBACK TO two;
    COMMIT;
  
 PRAGMA integrity_check 

 PRAGMA auto_vacuum = incremental 

    CREATE TABLE t1(a, b, PRIMARY KEY(a, b));
    INSERT INTO t1 VALUES(randstr(1000,1000), randstr(1000,1000));
    BEGIN;
      DELETE FROM t1;
      SAVEPOINT one;
      PRAGMA incremental_vacuum;
      ROLLBACK TO one;
    COMMIT;
  
 PRAGMA integrity_check 


    PRAGMA incremental_vacuum;
    CREATE TABLE t5(x, y);
    INSERT INTO t5 VALUES(1, randstr(1000,1000));
    INSERT INTO t5 VALUES(2, randstr(1000,1000));
    INSERT INTO t5 VALUES(3, randstr(1000,1000));

    BEGIN;
      INSERT INTO t5 VALUES(4, randstr(1000,1000));
      INSERT INTO t5 VALUES(5, randstr(1000,1000));
      DELETE FROM t5 WHERE x=1 OR x=2;
      SAVEPOINT one;
        PRAGMA incremental_vacuum;
        SAVEPOINT two;
          INSERT INTO t5 VALUES(1, randstr(1000,1000));
          INSERT INTO t5 VALUES(2, randstr(1000,1000));
        ROLLBACK TO two;
      ROLLBACK TO one;
    COMMIT;
    PRAGMA integrity_check;
  


    DROP TABLE t5;
  
