



    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    SELECT * FROM t1;
  




     CREATE TABLE t1b(x TEXT PRIMARY KEY, y);
     INSERT INTO t1b VALUES('abc','def'),('ghi','jkl'),('mno','pqr');
  

     SELECT y FROM t1b WHERE x GLOB $xyzzy
  

