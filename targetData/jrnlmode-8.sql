
 PRAGMA locking_mode=EXCLUSIVE 
exclusive

 CREATE TABLE t1(x) 


 INSERT INTO t1 VALUES(123) 


 SELECT * FROM t1 
123

 PRAGMA journal_mode=PERSIST 
persist

 PRAGMA journal_mode=DELETE 
delete

 PRAGMA journal_mode=TRUNCATE 
truncate

 PRAGMA journal_mode=DELETE 
delete

 CREATE TABLE t2(y) 


 INSERT INTO t2 VALUES(456) 


 SELECT * FROM t1, t2 
123 456

 PRAGMA locking_mode=NORMAL 
normal

 PRAGMA journal_mode=PERSIST 
persist

 PRAGMA journal_mode=TRUNCATE 
truncate

 PRAGMA journal_mode=PERSIST 
persist

 PRAGMA journal_mode=DELETE 
delete

 PRAGMA journal_mode=TRUNCATE 
truncate

 PRAGMA locking_mode=EXCLUSIVE 
exclusive

 CREATE TABLE t3(z) 


 BEGIN IMMEDIATE 


 PRAGMA journal_mode=DELETE 
delete

 COMMIT 


 PRAGMA journal_mode=DELETE 
delete

 PRAGMA journal_mode=TRUNCATE 
truncate

 PRAGMA locking_mode=NORMAL 
normal

 CREATE TABLE t4(w) 


 BEGIN IMMEDIATE 


 PRAGMA journal_mode=DELETE 
delete

 COMMIT 


 PRAGMA journal_mode=DELETE 
delete
