

      INSERT INTO t1 VALUES(1, 'abcde');
    

 INSERT INTO t1 VALUES(2, 'fghij') 

 INSERT INTO t1 VALUES(3, 'klmno') 

 INSERT INTO t1 VALUES(4, 'pqrst') 


 PRAGMA read_uncommitted=1 

 INSERT INTO t1 VALUES(3, 'klmno') 

