

    CREATE TABLE t1(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9);
    INSERT INTO t1 VALUES(0,0,0,0,0,0,0,0,0,0);
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
  


    UPDATE t1 SET x0=1, x1=1, x2=1, x3=1, x4=1, x5=1, x6=1, x7=1, x8=1, x9=1
  


    UPDATE t1 SET x0=2, x1=2, x2=2, x3=2, x4=2, x5=2, x6=2, x7=2, x8=2, x9=2
  
