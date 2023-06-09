

    CREATE TABLE t1(a);
    CREATE TABLE t2(a);
    CREATE TABLE t3(a,b);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t3 VALUES(1,2);

    SELECT * FROM t1 LEFT JOIN t2 USING(a) LEFT JOIN t3 USING(a);
  


    SELECT t1.a, t3.b 
      FROM t1 LEFT JOIN t2 ON t1.a=t2.a LEFT JOIN t3 ON t2.a=t3.a;
  


    SELECT t1.a, t3.b
      FROM t1 LEFT JOIN t2 ON t1.a=t2.a LEFT JOIN t3 ON t1.a=t3.a;
  
