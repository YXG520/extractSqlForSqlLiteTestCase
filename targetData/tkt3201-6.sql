

    CREATE TABLE t3(c INTEGER PRIMARY KEY, d TEXT);
    INSERT INTO t3 VALUES(2, 'two');
  
 SELECT a, b, c, d FROM t1, t3 
