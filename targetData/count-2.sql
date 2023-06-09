

    CREATE TABLE t2(a, b);
  

SELECT count(DISTINCT *) FROM t2




SELECT count(DISTINCT) FROM t2




  SELECT count(*) FROM t2 HAVING count(*)>1;



  SELECT count(*) FROM t2 HAVING count(*)<10;



 CREATE VIEW v1 AS SELECT 1 AS a 



 CREATE VIRTUAL TABLE techo USING echo(t1); 
