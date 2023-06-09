

    CREATE TABLE t1(a,b);
    CREATE VIEW v1 AS
      SELECT * FROM t1 WHERE b%7=0 UNION SELECT * FROM t1 WHERE b%5=0;
    INSERT INTO t1 VALUES(1,7);
    INSERT INTO t1 VALUES(2,10);
    INSERT INTO t1 VALUES(3,14);
    INSERT INTO t1 VALUES(4,15);
    INSERT INTO t1 VALUES(1,16);
    INSERT INTO t1 VALUES(2,17);
    INSERT INTO t1 VALUES(3,20);
    INSERT INTO t1 VALUES(4,21);
    INSERT INTO t1 VALUES(1,22);
    INSERT INTO t1 VALUES(2,24);
    INSERT INTO t1 VALUES(3,25);
    INSERT INTO t1 VALUES(4,26);
    INSERT INTO t1 VALUES(1,27);
 
    SELECT b FROM v1 ORDER BY b;
  


    SELECT * FROM v1 ORDER BY a, b;
  


    SELECT x.a || '/' || x.b || '/' || y.b
      FROM v1 AS x JOIN v1 AS y ON x.a=y.a AND x.b<y.b
     ORDER BY x.a, x.b, y.b
  


    CREATE VIEW v2 AS
    SELECT x.a || '/' || x.b || '/' || y.b AS z
      FROM v1 AS x JOIN v1 AS y ON x.a=y.a AND x.b<y.b
     ORDER BY x.a, x.b, y.b;
    SELECT * FROM v2;
  
