

     PRAGMA auto_vacuum=0;
     PRAGMA page_size = 512;
     CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
     WITH s(a, b) AS (
       SELECT 2, 'abcdefghij'
       UNION ALL
       SELECT a+2, b FROM s WHERe a < 40
     )
     INSERT INTO t1 SELECT * FROM s;
   

 INSERT INTO t1 VALUES(5, 'klmnopqrst') 
 INSERT INTO t1 VALUES(7, 'klmnopqrst') 


     INSERT INTO t1 VALUES(9, 'klmnopqrst');
   
