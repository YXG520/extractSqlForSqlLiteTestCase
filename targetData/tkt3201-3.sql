

    CREATE TABLE t2(a INTEGER PRIMARY KEY, b TEXT);
    INSERT INTO t2 VALUES(2, 'two');
  

    SELECT l.a, r.a FROM t1 AS l, t2 AS r WHERE l.a < r.a;
  
