

    PRAGMA encoding=UTF16;
    CREATE TABLE t1(x,y);
    INSERT INTO t1 VALUES('abc','This is a test string');
  
SELECT * FROM t1

SELECT y FROM t1 WHERE x='abc'
