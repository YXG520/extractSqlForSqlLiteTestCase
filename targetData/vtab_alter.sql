CREATE TABLE t1(a, b VARCHAR, c INTEGER) 
CREATE VIRTUAL TABLE t1echo USING echo(t1) 
SELECT * FROM t1echo 
ALTER TABLE t1echo RENAME TO new 
SELECT * FROM t1echo 
SELECT * FROM new 
DROP TABLE new;
    DROP TABLE t1;
    CREATE TABLE t1_base(a, b, c);
    CREATE VIRTUAL TABLE t1 USING echo('*_base');
  
INSERT INTO t1_base VALUES(1, 2, 3);
    SELECT * FROM t1;
  
ALTER TABLE t1 RENAME TO x 
SELECT * FROM x; 
SELECT * FROM x_base; 
CREATE TABLE y_base(a, b, c) 
ALTER TABLE x RENAME TO y 
SELECT * FROM x 