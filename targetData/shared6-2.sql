

 BEGIN; INSERT INTO t1 VALUES(9, 10); 
 SELECT * FROM t1 

 SELECT * FROM t1 

 COMMIT 
 BEGIN; INSERT INTO t1 VALUES(11, 12); 
 SELECT * FROM t1 

 SELECT * FROM t1 

 COMMIT 

