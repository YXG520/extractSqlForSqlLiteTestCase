PRAGMA auto_vacuum=OFF;
    CREATE TABLE t1(a, b);
    CREATE INDEX i1 ON t1(a, b);
    INSERT INTO t1 VALUES(1, randstr(1000,1000));
    INSERT INTO t1 VALUES(2, randstr(1000,1000));
    INSERT INTO t1 VALUES(3, randstr(1000,1000));
    INSERT INTO t1 VALUES(4, randstr(1000,1000));
    INSERT INTO t1 VALUES(5, randstr(1000,1000));
    INSERT INTO t1 VALUES(6, randstr(1000,1000));
    CREATE TABLE t2(a, b);
    CREATE TABLE t3(a, b);
    CREATE TABLE t4(a, b);
    CREATE TABLE t5(a, b);
    CREATE TABLE t6(a, b);
    CREATE TABLE t7(a, b);
    CREATE TABLE t8(a, b);
    CREATE TABLE t9(a, b);
    CREATE TABLE t10(a, b);
    PRAGMA integrity_check
  
PRAGMA cache_size = 10;
    UPDATE t1 SET b = randstr(1000,1000);
    INSERT INTO t9 VALUES(1, 2);
  
PRAGMA integrity_check
PRAGMA journal_mode = persist;
    PRAGMA cache_size = 10;
    UPDATE t1 SET b = randstr(1000,1000);
    PRAGMA cache_size = 100;
    BEGIN;
      INSERT INTO t2 VALUES('a', 'b');
      INSERT INTO t3 VALUES('a', 'b');
      INSERT INTO t4 VALUES('a', 'b');
      INSERT INTO t5 VALUES('a', 'b');
      INSERT INTO t6 VALUES('a', 'b');
      INSERT INTO t7 VALUES('a', 'b');
      INSERT INTO t8 VALUES('a', 'b');
      INSERT INTO t9 VALUES('a', 'b');
      INSERT INTO t10 VALUES('a', 'b');
    COMMIT;
  
PRAGMA integrity_check
PRAGMA synchronous = off;
    BEGIN;
    DELETE FROM t1;
    SELECT count(*) FROM t1;
  
COMMIT;
    SELECT count(*) FROM t1;
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check
  
PRAGMA journal_mode = persist;
      CREATE TABLE ab(a, b);
      INSERT INTO ab VALUES(0, 'abc');
      INSERT INTO ab VALUES(1, NULL);
      INSERT INTO ab VALUES(2, NULL);
      INSERT INTO ab VALUES(3, NULL);
      INSERT INTO ab VALUES(4, NULL);
      INSERT INTO ab VALUES(5, NULL);
      INSERT INTO ab VALUES(6, NULL);
      UPDATE ab SET b = randstr(1000,1000);
      ATTACH 'test2.db' AS aux;
      PRAGMA aux.journal_mode = persist;
      CREATE TABLE aux.ab(a, b);
      INSERT INTO aux.ab SELECT * FROM main.ab;

      UPDATE aux.ab SET b = randstr(1000,1000) WHERE a>=1;
      UPDATE ab SET b = randstr(1000,1000) WHERE a>=1;
    
BEGIN;
        UPDATE aux.ab SET b = 'def' WHERE a = 0;
        UPDATE main.ab SET b = 'def' WHERE a = 0;
      COMMIT;
    
UPDATE aux.ab SET b = randstr(1000,1000) WHERE a>=1;
      UPDATE ab SET b = randstr(1000,1000) WHERE a>=1;
    
ATTACH 'test2.db' AS aux;
      BEGIN;
        UPDATE aux.ab SET b = 'ghi' WHERE a = 0;
        UPDATE main.ab SET b = 'ghi' WHERE a = 0;
      COMMIT;
    
SELECT b FROM main.ab WHERE a = 0;
      SELECT b FROM aux.ab WHERE a = 0;
    
ATTACH 'test2.db' AS aux;
      BEGIN;
        UPDATE aux.ab SET b = 'jkl' WHERE a = 0;
        UPDATE main.ab SET b = 'jkl' WHERE a = 0;
      COMMIT;
    
SELECT b FROM aux.ab WHERE a = 0 
SELECT b FROM main.ab WHERE a = 0 
CREATE TABLE t1(x PRIMARY KEY);
        INSERT INTO t1 VALUES(randomblob(900));
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;          /* 64 rows */
      
PRAGMA cache_size = 10;
        BEGIN;
          UPDATE t1 SET x = randomblob(900);
        ROLLBACK;
        INSERT INTO t1 VALUES(randomblob(900));
      
PRAGMA integrity_check 
PRAGMA cache_size = 10;
        CREATE TABLE t1(x PRIMARY KEY);
        INSERT INTO t1 VALUES(randomblob(900));
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;
        INSERT INTO t1 SELECT randomblob(900) FROM t1;          /* 64 rows */
        BEGIN;
          UPDATE t1 SET x = randomblob(900);
      
SELECT * FROM sqlite_master;
        INSERT INTO t1 VALUES(randomblob(900));
      
PRAGMA integrity_check 
