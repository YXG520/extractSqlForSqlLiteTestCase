
 DELETE FROM t1 

 
    PRAGMA cache_size = 20;
    BEGIN;
      INSERT INTO t1 VALUES(a_string(401), a_string(402));
      SAVEPOINT abc;
  
 INSERT INTO t1 VALUES (a_string(2000000), a_string(2500000)) 
