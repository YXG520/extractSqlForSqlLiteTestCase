

    CREATE TABLE t13(a CHECK(a!=2));
    BEGIN;
    REPLACE INTO t13 VALUES(1);
  

    REPLACE INTO t13 VALUES(2);
  


    REPLACE INTO t13 VALUES(3);
    COMMIT;
    SELECT * FROM t13;
  
