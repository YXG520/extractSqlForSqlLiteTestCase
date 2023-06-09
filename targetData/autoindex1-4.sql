

    CREATE TABLE t4(a, b);
    INSERT INTO t4 VALUES(1,2);
    INSERT INTO t4 VALUES(2,3);
  
INSERT INTO t4 SELECT a+$n, b+$n FROM t4

    SELECT count(*) FROM t4;
  


    SELECT count(*)
      FROM t4 AS x1
      JOIN t4 AS x2 ON x2.a=x1.b
      JOIN t4 AS x3 ON x3.a=x2.b
      JOIN t4 AS x4 ON x4.a=x3.b
      JOIN t4 AS x5 ON x5.a=x4.b
      JOIN t4 AS x6 ON x6.a=x5.b
      JOIN t4 AS x7 ON x7.a=x6.b
      JOIN t4 AS x8 ON x8.a=x7.b
      JOIN t4 AS x9 ON x9.a=x8.b
      JOIN t4 AS x10 ON x10.a=x9.b;
  
