

    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES(1);
    
    SELECT * FROM (SELECT * FROM t1 WHERE 1=x.a) AS x;
  
