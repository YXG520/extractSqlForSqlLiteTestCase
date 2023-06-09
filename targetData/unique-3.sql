

    CREATE TABLE t3(
       a int,
       b int,
       c int,
       d int,
       unique(a,c,d)
     );
  


    INSERT INTO t3(a,b,c,d) VALUES(1,2,3,4);
    SELECT * FROM t3 ORDER BY a,b,c,d;
  


    INSERT INTO t3(a,b,c,d) VALUES(1,2,3,5);
    SELECT * FROM t3 ORDER BY a,b,c,d;
  


    INSERT INTO t3(a,b,c,d) VALUES(1,4,3,5);
    SELECT * FROM t3 ORDER BY a,b,c,d;
  
