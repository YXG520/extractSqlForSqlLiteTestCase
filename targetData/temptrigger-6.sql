

  CREATE TABLE t1(x);
  CREATE TEMP TRIGGER tr1 BEFORE INSERT ON t1 BEGIN 
    SELECT raise(ABORT, 'error'); 
  END;
  ATTACH 'test.db2' AS aux;


 CREATE TABLE t1(a, b, c); 


  SELECT type,name,tbl_name,sql FROM aux.sqlite_master;
  INSERT INTO aux.t1 VALUES(1,2,3);



  INSERT INTO main.t1 VALUES(1);

