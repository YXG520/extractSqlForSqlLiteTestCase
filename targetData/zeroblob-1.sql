

    CREATE TABLE t1(a,b,c,d);
  

    INSERT INTO t1 VALUES(2,3,4,zeroblob(1000000));
  




    SELECT length(d) FROM t1
  


    INSERT INTO t1 VALUES(3,4,zeroblob(10000),5);
  


    SELECT length(c), length(d) FROM t1
  


    INSERT INTO t1 VALUES(4,5,zeroblob(10000),zeroblob(10000));
  



    SELECT length(c), length(d) FROM t1
  


    INSERT INTO t1 VALUES(5,zeroblob(10000),NULL,zeroblob(10000));
  



    SELECT length(b), length(d) FROM t1 WHERE a=5
  
