

    DELETE FROM t1;
    BEGIN;
      INSERT INTO t1 VALUES('a', 'b');
      SAVEPOINT sp;
        INSERT INTO t1 VALUES('c', 'd');
        SELECT * FROM t1;
  


      ROLLBACK TO sp;
      SELECT * FROM t1;
  


    COMMIT;
    SELECT * FROM t1;
  

 SELECT * FROM t1 

 PRAGMA cache_size = 10 

    CREATE TABLE t2(a, b);
    INSERT INTO t2 VALUES(blob(400), blob(400));
    SAVEPOINT tr;
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  2 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  4 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  8 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 16 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 32 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  2 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  4 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  8 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 16 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 32 */
      SELECT count(*) FROM t2;
  

 ROLLBACK TO tr 


      INSERT INTO t1 VALUES('x', 'y');
    RELEASE tr;
  

 SELECT count(*) FROM t2 

 SELECT count(*) FROM t2 ; SELECT count(*) FROM t1 

 PRAGMA integrity_check 


    PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES('a', 'b');
  
 SELECT * FROM t1 

 PRAGMA cache_size = 10 

    CREATE TABLE t2(a, b);
    BEGIN;
    INSERT INTO t2 VALUES(blob(400), blob(400));
    SAVEPOINT tr;
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  2 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  4 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  8 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 16 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 32 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  2 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  4 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  8 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 16 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 32 */
      SELECT count(*) FROM t2;
  

 ROLLBACK TO tr 


      INSERT INTO t1 VALUES('x', 'y');
    RELEASE tr;
    COMMIT;
  

 SELECT count(*) FROM t2 ; SELECT count(*) FROM t1 

 SELECT count(*) FROM t2 ; SELECT count(*) FROM t1 

 PRAGMA integrity_check 


    DELETE FROM t2;
    PRAGMA wal_checkpoint;
    BEGIN;
      INSERT INTO t2 VALUES('w', 'x');
      SAVEPOINT save;
        INSERT INTO t2 VALUES('y', 'z');
      ROLLBACK TO save;
    COMMIT;
  
 SELECT * FROM t2 
