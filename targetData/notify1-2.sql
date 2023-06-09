
 
    CREATE TABLE t2(a, b);
    INSERT INTO t2 VALUES('I', 'II');
  


    BEGIN;
    INSERT INTO t1 VALUES(5, 6);
  

    BEGIN;
    SELECT * FROM t2;
  

 SELECT * FROM t1 


 INSERT INTO t2 VALUES('III', 'IV') 


 ATTACH 'test2.db' AS aux2 
 ATTACH 'test3.db' AS aux3 

    CREATE TABLE main.t1(a, b);
    CREATE TABLE aux2.t2(a, b);
    CREATE TABLE aux3.t3(a, b);
  

 BEGIN ; INSERT INTO t1 VALUES(1, 2) 
 BEGIN ; INSERT INTO t2 VALUES(1, 2) 
 BEGIN ; INSERT INTO t3 VALUES(1, 2) 

 SELECT * FROM t2 

 SELECT * FROM t3 

 SELECT * FROM t1 



 COMMIT 


 COMMIT 

 COMMIT 
