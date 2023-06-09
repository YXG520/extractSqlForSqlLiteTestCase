
 CREATE TABLE t1(a, b INTEGER, c) 
 INSERT INTO t1 VALUES('ott', $i, $c) 

    CREATE INDEX i1 ON t1(a, b);
    CREATE INDEX i2 ON t1(c);
    ANALYZE;
  
