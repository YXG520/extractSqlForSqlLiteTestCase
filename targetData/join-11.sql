

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
    CREATE TABLE t2(a INTEGER PRIMARY KEY, b TEXT);
    INSERT INTO t1 VALUES(1,'abc');
    INSERT INTO t1 VALUES(2,'def');
    INSERT INTO t2 VALUES(1,'abc');
    INSERT INTO t2 VALUES(2,'def');
    SELECT * FROM t1 NATURAL JOIN t2;
  

 SELECT a FROM t1 JOIN t1 USING (a)

 SELECT a FROM t1 JOIN t1 AS t2 USING (a)

 SELECT * FROM t1 NATURAL JOIN t1 AS t2

 SELECT * FROM t1 NATURAL JOIN t1 


    CREATE TABLE t1(a COLLATE nocase, b);
    CREATE TABLE t2(a, b);
    INSERT INTO t1 VALUES('ONE', 1);
    INSERT INTO t1 VALUES('two', 2);
    INSERT INTO t2 VALUES('one', 1);
    INSERT INTO t2 VALUES('two', 2);
  

 SELECT * FROM t1 NATURAL JOIN t2 

 SELECT * FROM t2 NATURAL JOIN t1 


    CREATE TABLE t1(a, b TEXT);
    CREATE TABLE t2(b INTEGER, a);
    INSERT INTO t1 VALUES('one', '1.0');
    INSERT INTO t1 VALUES('two', '2');
    INSERT INTO t2 VALUES(1, 'one');
    INSERT INTO t2 VALUES(2, 'two');
  

 SELECT * FROM t1 NATURAL JOIN t2 

 SELECT * FROM t2 NATURAL JOIN t1 
