

    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(x int, y int);
    INSERT INTO t1 VALUES(1,1);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(2,1);
    INSERT INTO t1 VALUES(2,2);
    INSERT INTO t1 VALUES(2,3);
  

    UPDATE t1 SET x=1 ORDER BY y LIMIT 2 OFFSET 2;
    UPDATE t1 SET x=2 WHERE y=1 ORDER BY y LIMIT 2 OFFSET 2;
    DELETE FROM t1 WHERE x=1 ORDER BY y LIMIT 2 OFFSET 2;
    DELETE FROM t1 ORDER BY y LIMIT 2 OFFSET 2;
  
