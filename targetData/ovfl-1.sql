

    PRAGMA cache_size = 10;
    CREATE TABLE t1(c1 TEXT, c2 TEXT);
    BEGIN;
  
 INSERT INTO t1 VALUES($c1, $c2) 


  SELECT sum(length(c2)) FROM t1;

