

    CREATE TABLE t1(a1 INTEGER);
    INSERT INTO t1 VALUES(1), (2), (3);
    CREATE TABLE t2(b1 INTEGER);
    INSERT INTO t2 VALUES(4), (5);
    SELECT (SELECT group_concat(a1,'x') FROM t2) FROM t1;
  


    SELECT
     (SELECT group_concat(a1,'x') || '-' || group_concat(b1,'y') FROM t2)
    FROM t1;
  


    SELECT (SELECT group_concat(b1,a1) FROM t2) FROM t1;
  


    SELECT (SELECT group_concat(a1,b1) FROM t2) FROM t1;
  
