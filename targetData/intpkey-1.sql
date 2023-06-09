

    CREATE TABLE t1(a TEXT PRIMARY KEY, b, c);
  


    SELECT name FROM sqlite_master
    WHERE type='index' AND tbl_name='t1';
  


    DROP TABLE t1;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
    SELECT name FROM sqlite_master
      WHERE type='index' AND tbl_name='t1';
  


    INSERT INTO t1 VALUES(5,'hello','world');
  


    SELECT * FROM t1;
  


    SELECT rowid, * FROM t1;
  


     INSERT INTO t1 VALUES(5,'second','entry');
  


    SELECT rowid, * FROM t1;
  


     INSERT INTO t1 VALUES(6,'second','entry');
  



    SELECT rowid, * FROM t1;
  


    INSERT INTO t1(b,c) VALUES('one','two');
    SELECT b FROM t1 ORDER BY b;
  


    UPDATE t1 SET a=4 WHERE b='one';
    SELECT * FROM t1;
  


    SELECT * FROM t1 WHERE a==4;
  


    EXPLAIN QUERY PLAN
    SELECT * FROM t1 WHERE a==4;
  


    INSERT INTO t1 VALUES('x','y','z');
  


    INSERT INTO t1 VALUES('','y','z');
  


    INSERT INTO t1 VALUES(3.4,'y','z');
  


    INSERT INTO t1 VALUES(-3,'y','z');
  

SELECT * FROM t1
