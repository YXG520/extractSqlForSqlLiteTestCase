CREATE TABLE t1 (a PRIMARY KEY, b);
    INSERT INTO t1 VALUES ('w',  1);
    INSERT INTO t1 VALUES ('z', -1);
  
    CREATE TABLE t2 (m INTEGER PRIMARY KEY, n, a, p);
    INSERT INTO t2 VALUES (25, 13, 'w', 1);
    INSERT INTO t2 VALUES (26, 25, 'z', 153);
    INSERT INTO t2 VALUES (27, 25, 'z', 68);

    CREATE TABLE t3 (m);
    INSERT INTO t3 VALUES (25);
  
SELECT 111, t1.b*123
    FROM t3, t2 AS j0, t2 AS j1, t1
    WHERE j0.m=t3.m AND t1.a=j0.a AND j1.n=j0.m;
  
SELECT 222, t1.b*123
    FROM t3, t2 AS j0, t2 AS j1, t1
    WHERE j0.m=t3.m AND t1.a=j0.a AND j1.n=j0.m
    ORDER BY t1.b;
  