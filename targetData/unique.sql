CREATE TABLE t1(
       a int PRIMARY KEY,
       b int PRIMARY KEY,
       c text
    );
  
CREATE TABLE t1(
       a int PRIMARY KEY,
       b int UNIQUE,
       c text
    );
  
INSERT INTO t1(a,b,c) VALUES(1,2,3)
  
INSERT INTO t1(a,b,c) VALUES(1,3,4)
  
SELECT * FROM t1 ORDER BY a;
  
INSERT INTO t1(a,b,c) VALUES(3,2,4)
  
SELECT * FROM t1 ORDER BY a;
  
INSERT INTO t1(a,b,c) VALUES(3,4,5)
  
SELECT * FROM t1 ORDER BY a;
  
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
  
CREATE TABLE t3(
       a int,
       b int,
       c int,
       d int,
       unique(a,c,d)
     );
  
INSERT INTO t3(a,b,c,d) VALUES(1,2,3,4);
    SELECT * FROM t3 ORDER BY a,b,c,d;
  
INSERT INTO t3(a,b,c,d) VALUES(1,2,3,5);
    SELECT * FROM t3 ORDER BY a,b,c,d;
  
INSERT INTO t3(a,b,c,d) VALUES(1,4,3,5);
    SELECT * FROM t3 ORDER BY a,b,c,d;
  
CREATE TABLE t4(a UNIQUE, b, c, UNIQUE(b,c));
    INSERT INTO t4 VALUES(1,2,3);
    INSERT INTO t4 VALUES(NULL, 2, NULL);
    SELECT * FROM t4;
  
INSERT INTO t4 VALUES(NULL, 3, 4);
  
SELECT * FROM t4
  
INSERT INTO t4 VALUES(2, 2, NULL);
  
SELECT * FROM t4
  
INSERT INTO t4 VALUES(NULL, 2, NULL);
  
SELECT * FROM t4
CREATE UNIQUE INDEX i4a ON t4(a,b)
CREATE UNIQUE INDEX i4b ON t4(a,b,c)
CREATE UNIQUE INDEX i4c ON t4(b)
CREATE TABLE t5(
      first_column_with_long_name,
      second_column_with_long_name,
      third_column_with_long_name,
      fourth_column_with_long_name,
      fifth_column_with_long_name,
      sixth_column_with_long_name,
      UNIQUE(
        first_column_with_long_name,
        second_column_with_long_name,
        third_column_with_long_name,
        fourth_column_with_long_name,
        fifth_column_with_long_name,
        sixth_column_with_long_name
      )
    );
    INSERT INTO t5 VALUES(1,2,3,4,5,6);
    SELECT * FROM t5;
  
INSERT INTO t5 VALUES(1,2,3,4,5,6);
  