

    DROP TABLE t1;
    CREATE TABLE t2(a int, b int);
    INSERT INTO t2(a,b) VALUES(1,2);
    INSERT INTO t2(a,b) VALUES(3,4);
    SELECT * FROM t2 ORDER BY a;
  


    CREATE UNIQUE INDEX i2 ON t2(a)
  


    SELECT * FROM t2 ORDER BY a
  


    INSERT INTO t2 VALUES(1,5);
  


    SELECT * FROM t2 ORDER BY a
  


    DROP INDEX i2;
    SELECT * FROM t2 ORDER BY a;
  


    INSERT INTO t2 VALUES(1,5)
  


    SELECT * FROM t2 ORDER BY a, b;
  


    CREATE UNIQUE INDEX i2 ON t2(a);
  


    CREATE INDEX i2 ON t2(a);
  
