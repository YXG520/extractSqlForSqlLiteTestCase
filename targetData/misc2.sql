pragma recursive_triggers = off 
CREATE TABLE FOO(bar integer);
    CREATE TRIGGER foo_insert BEFORE INSERT ON foo BEGIN
      SELECT CASE WHEN (NOT new.bar BETWEEN 0 AND 20)
             THEN raise(rollback, 'aiieee') END;
    END;
    INSERT INTO foo(bar) VALUES (1);
  
INSERT INTO foo(bar) VALUES (111);
  
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
    
SELECT t1.b+t2.b AS a, t1.a, t2.a FROM t1, t2 WHERE a==10
  
INSERT INTO t1 VALUES(4000000000,'a','b');
    SELECT a FROM t1 WHERE a>1;
  
INSERT INTO t1 VALUES(2147483648,'b2','c2');
    INSERT INTO t1 VALUES(2147483647,'b3','c3');
    SELECT a FROM t1 WHERE a>2147483647;
  
SELECT a FROM t1 WHERE a<2147483648;
  
SELECT a FROM t1 WHERE a<=2147483648;
  
SELECT a FROM t1 WHERE a<10000000000;
  
SELECT a FROM t1 WHERE a<1000000000000 ORDER BY 1;
  
CREATE TABLE x(a,b);
    CREATE VIEW y AS 
      SELECT x1.b AS p, x2.b AS q FROM x AS x1, x AS x2 WHERE x1.a=x2.a;
    CREATE VIEW z AS
      SELECT y1.p, y2.p FROM y AS y1, y AS y2 WHERE y1.q=y2.q;
    SELECT * from z;
  

CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    SELECT * FROM t1;
  
CREATE TABLE t1(x);
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      SELECT * FROM t1;
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
    
SELECT * FROM t1
CREATE TABLE t1(x);
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      SELECT * FROM t1;
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT * FROM t1
DELETE FROM t1;
      INSERT INTO t1(rowid,x) VALUES(10,10);
    
SELECT * FROM t1
pragma recursive_triggers = off 
-
BEGIN;
      CREATE TABLE counts(n INTEGER PRIMARY KEY);
      INSERT INTO counts VALUES(0);
      INSERT INTO counts VALUES(1);
      INSERT INTO counts SELECT n+2 FROM counts;
      INSERT INTO counts SELECT n+4 FROM counts;
      INSERT INTO counts SELECT n+8 FROM counts;
      COMMIT;
  
      CREATE TEMP TABLE x AS
      SELECT dim1.n, dim2.n, dim3.n
      FROM counts AS dim1, counts AS dim2, counts AS dim3
      WHERE dim1.n<10 AND dim2.n<10 AND dim3.n<10;
  
      SELECT count(*) FROM x;
    
DROP TABLE x;
      CREATE TEMP TABLE x AS
      SELECT dim1.n, dim2.n, dim3.n
      FROM counts AS dim1, counts AS dim2, counts AS dim3
      WHERE dim1.n>=6 AND dim2.n>=6 AND dim3.n>=6;
  
      SELECT count(*) FROM x;
    
DROP TABLE x;
      CREATE TEMP TABLE x AS
      SELECT dim1.n, dim2.n, dim3.n, dim4.n
      FROM counts AS dim1, counts AS dim2, counts AS dim3, counts AS dim4
      WHERE dim1.n<5 AND dim2.n<5 AND dim3.n<5 AND dim4.n<5;
  
      SELECT count(*) FROM x;
    
CREATE TABLE t1229(x);
      CREATE TRIGGER r1229 BEFORE INSERT ON t1229 BEGIN
        INSERT INTO t1229 SELECT y FROM (SELECT new.x y);
      END;
      INSERT INTO t1229 VALUES(1);
    
