

    BEGIN; 
      CREATE TABLE t1(a, b);
      CREATE TABLE t2(a, b);
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t2 VALUES(1, 2);
  

    BEGIN;
      INSERT INTO t1 VALUES(3, 4);
  


      BEGIN;
        SELECT * FROM t1;
    

 SELECT * FROM t2 



