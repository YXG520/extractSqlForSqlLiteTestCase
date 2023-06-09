

    CREATE TABLE t1(a,b,c);
    INSERT INTO t1 VALUES(1,2,3);
    CREATE TABLE t2(a,b,c);
    INSERT INTO t2 VALUES(7,8,9);
  


    SELECT rowid, * FROM (SELECT * FROM t1, t2);
  


    SELECT 'rowid', * FROM (SELECT * FROM t1, t2);
  


    CREATE VIEW v1 AS SELECT * FROM t1, t2;
    SELECT rowid, * FROM v1;
  


    SELECT 'rowid', * FROM v1;
  


      SELECT * FROM (SELECT a, b AS 'a', c AS 'a', 4 AS 'a' FROM t1)
    
