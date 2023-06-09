
transaction
 PRAGMA lock_status 

 INSERT INTO t1 VALUES(1, 2, 3) 
 PRAGMA lock_status 

transaction
 PRAGMA lock_status 

 INSERT INTO t1 VALUES(1, 2, 3) 
 PRAGMA lock_status 

transaction
 PRAGMA lock_status 
