

    DROP TABLE t1;
    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(4);
    SELECT * FROM t1;
  

CREATE TABLE t1(a, b DEFAULT '123', c INTEGER DEFAULT '123')

    SELECT * FROM t1 LIMIT 1;
  


    SELECT a, typeof(a), b, typeof(b), c, typeof(c) FROM t1 LIMIT 1;
  


    SELECT a, typeof(a), b, typeof(b), c, typeof(c) FROM t1 LIMIT 1;
  

CREATE TABLE t1(a, b DEFAULT -123.0, c VARCHAR(10) default 5)

    SELECT a, typeof(a), b, typeof(b), c, typeof(c) FROM t1 LIMIT 1;
  
