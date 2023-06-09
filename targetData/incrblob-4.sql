






    INSERT INTO blobs(k, v, i) VALUES(123, 567.765, NULL);
  



    INSERT INTO blobs(k, v, i) VALUES(X'010203040506070809', 'hello', 'world');
  


    CREATE TABLE t3(a INTEGER PRIMARY KEY, b);
    INSERT INTO t3 VALUES(1, 2);
  






 CREATE VIEW blobs_view AS SELECT k, v, i FROM blobs 

 CREATE VIRTUAL TABLE blobs_echo USING echo(blobs) 
