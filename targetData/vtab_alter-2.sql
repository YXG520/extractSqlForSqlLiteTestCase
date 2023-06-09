
 
    DROP TABLE new;
    DROP TABLE t1;
    CREATE TABLE t1_base(a, b, c);
    CREATE VIRTUAL TABLE t1 USING echo('*_base');
  

 
    INSERT INTO t1_base VALUES(1, 2, 3);
    SELECT * FROM t1;
  

 ALTER TABLE t1 RENAME TO x 

 SELECT * FROM x; 

 SELECT * FROM x_base; 
