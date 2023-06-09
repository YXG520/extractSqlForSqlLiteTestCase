

    CREATE TABLE t1(
       a int PRIMARY KEY,
       b int PRIMARY KEY,
       c text
    );
  


    CREATE TABLE t1(
       a int PRIMARY KEY,
       b int UNIQUE,
       c text
    );
  


    INSERT INTO t1(a,b,c) VALUES(1,2,3)
  


    INSERT INTO t1(a,b,c) VALUES(1,3,4)
  


    SELECT * FROM t1 ORDER BY a;
  


    INSERT INTO t1(a,b,c) VALUES(3,2,4)
  


    SELECT * FROM t1 ORDER BY a;
  


    INSERT INTO t1(a,b,c) VALUES(3,4,5)
  


    SELECT * FROM t1 ORDER BY a;
  
