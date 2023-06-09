

    SELECT * FROM t1
  

    DELETE FROM t2;
    INSERT INTO t2 VALUES(21, 'x');
    INSERT INTO t2 VALUES(22, 'y');
    CREATE TABLE tx(x1,x2,y1,y2);
    INSERT INTO tx VALUES(1, 11, 'x', 'x');
    INSERT INTO tx VALUES(2, 12, 'y', 'y');
    INSERT INTO tx VALUES(11, 21, 'x', 'x');
    INSERT INTO tx VALUES(12, 22, 'y', 'y');
    CREATE INDEX i2 ON t2(x);
  


    SELECT * FROM t2
  


    ATTACH DATABASE 'test2.db' AS db2;
    SELECT * FROM t2
  


    SELECT * FROM t2;
  

SELECT * FROM t2

    SELECT * FROM t2;
  


    UPDATE t2 SET x=x+1 WHERE x=50;
  

    SELECT * FROM t2;
  

SELECT * FROM t2

UPDATE t2 SET x=0 WHERE 0
SELECT * FROM t2

SELECT * FROM t2

SELECT * FROM t1

UPDATE t1 SET a=a+1

SELECT * FROM t1

UPDATE t2 SET x=x+1 WHERE x=50
ROLLBACK

SELECT * FROM t1

SELECT * FROM t1
