

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
    INSERT INTO t1 VALUES(0,544,846);
    INSERT INTO t1 VALUES(1,345,51);
    CREATE TABLE t2(a INTEGER PRIMARY KEY, b, c);
    INSERT INTO t2 SELECT * FROM t1;
    CREATE INDEX i2 on t2(c);
  


    SELECT a FROM t1
     WHERE (b > 45 AND c < 356)
        OR b <= 733
        OR b >= 557
        OR (b >= 614 AND c < 251)
     ORDER BY b;
  


    SELECT a FROM t2
     WHERE (b > 45 AND c < 356)
        OR b <= 733
        OR b >= 557
        OR (b >= 614 AND c < 251)
     ORDER BY b;
  
