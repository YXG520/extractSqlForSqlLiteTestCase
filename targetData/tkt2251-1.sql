

    CREATE TABLE t1(a INTEGER);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(9);
    INSERT INTO t1 VALUES(9);
    INSERT INTO t1 VALUES(9);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(2);
    ALTER TABLE t1 ADD COLUMN b REAL DEFAULT 4.0;
    SELECT avg(b), typeof(avg(b)) FROM t1;
  


    SELECT sum(b), typeof(sum(b)) FROM t1;
  


    SELECT a, sum(b), typeof(sum(b)) FROM t1 GROUP BY a ORDER BY a;
  
