
 CREATE TABLE t1(a, b HIDDEN VARCHAR, c INTEGER) 

 CREATE VIRTUAL TABLE t1e USING echo(t1) 

 PRAGMA table_info(t1e) 


    INSERT INTO t1e VALUES('value a', 'value c');
  


    SELECT a, b, c FROM t1e;
  


    SELECT * FROM t1e;
  


  DELETE FROM t1e;
  INSERT INTO t1e SELECT 'abc','def';



  INSERT INTO t1e VALUES('ghi','jkl'),('mno','pqr'),('stu','vwx');



  SELECT a,b,c, '|' FROM t1e ORDER BY 1;



    INSERT INTO t1e SELECT * FROM t1e;
  


    SELECT * FROM t1e ORDER BY 1;
  


 DROP TABLE IF EXISTS t1e; 
 DROP TABLE IF EXISTS t1; 
 CREATE VIRTUAL TABLE t1e USING echo(t1) 
