

    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(NULL, 1);
  


    SELECT min(a), b FROM t1;
  


    SELECT min(a), b FROM t1 WHERE a<50;
  


    INSERT INTO t1 VALUES(2, 2);
  


    SELECT min(a), b FROM t1;
  


    SELECT min(a), b FROM t1 WHERE a<50;
  
