

    PRAGMA auto_vacuum = 1;
    BEGIN;
    CREATE TABLE t1(a, b);
  

      INSERT INTO t1 VALUES($i, randstr(1000, 2000))
    

    COMMIT;
  
