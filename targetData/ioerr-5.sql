

    ATTACH 'test2.db' AS test2;
  

    BEGIN;
    CREATE TABLE t1(a,b,c);
    CREATE TABLE test2.t2(a,b,c);
    COMMIT;
  
