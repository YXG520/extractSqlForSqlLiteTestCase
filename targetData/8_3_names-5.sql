

    PRAGMA journal_mode=WAL;
    CREATE TABLE t1(x);
    CREATE VIRTUAL TABLE nums USING wholenumber;
    INSERT INTO t1 SELECT value FROM nums WHERE value BETWEEN 1 AND 1000;
    BEGIN;
    UPDATE t1 SET x=x*2;
  

    BEGIN;
    SELECT sum(x) FROM t1;
  






    COMMIT;
    SELECT sum(x) FROM t1;
  


    SELECT sum(x) FROM t1;
  
