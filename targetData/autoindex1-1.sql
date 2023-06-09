

    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,11);
    INSERT INTO t1 VALUES(2,22);
    INSERT INTO t1 SELECT a+2, b+22 FROM t1;
    INSERT INTO t1 SELECT a+4, b+44 FROM t1;
    CREATE TABLE t2(c,d);
    INSERT INTO t2 SELECT a, 900+b FROM t1;
  

    PRAGMA automatic_index=OFF;
    SELECT b, d FROM t1 JOIN t2 ON a=c ORDER BY b;
  




    PRAGMA automatic_index=ON;
    SELECT b, d FROM t1 JOIN t2 ON a=c ORDER BY b;
  





  CREATE TABLE t11(w);
  CREATE TABLE t12(y);
  INSERT INTO t11 VALUES(NULL);
  INSERT INTO t12 VALUES('notnull');



  SELECT count(*) FROM t11 LEFT JOIN t12 WHERE t12.y IS t11.w;



  CREATE TABLE t1(a INT, b INT);
  CREATE TABLE t2(c INT, d INT);
  CREATE TABLE t3(e TEXT, f TEXT);
  INSERT INTO t1 VALUES(1, 1);
  INSERT INTO t2 VALUES(1, 2);
  INSERT INTO t3 VALUES('abc', 'def');



  SELECT * FROM t1, t2 LEFT JOIN t3 ON (t2.d=1) WHERE t2.c = +t1.a;



  SELECT * FROM t1 LEFT JOIN t2 ON (t2.c=+t1.a) LEFT JOIN t3 ON (t2.d IS NULL);

