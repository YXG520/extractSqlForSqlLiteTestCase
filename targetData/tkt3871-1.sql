

    BEGIN;
    CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
  
 INSERT INTO t1 VALUES($i, $i*$i) 
 
    CREATE VIRTUAL TABLE e USING echo(t1);
    SELECT count(*) FROM e;
  

 SELECT * FROM e WHERE a = 1 OR a = 2 

 SELECT * FROM e WHERE a = 1 OR a = 2 

 SELECT * FROM e WHERE a = 1 OR a = 2 OR b = 9 

 SELECT * FROM e WHERE a = 1 OR a = 2 OR b = 9 
