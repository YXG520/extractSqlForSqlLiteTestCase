

    CREATE TABLE t1(x);
    INSERT INTO t1(x) VALUES(99);
    SELECT * FROM t1;
  


    ATTACH ':memory:' AS aux1;
    CREATE TABLE aux1.t2(y);
    CREATE TEMP TABLE t3(z);
  


    UPDATE t1 SET x=x+1;
  


    UPDATE t2 SET y=y+1;
  


    SELECT * FROM t1
  



    UPDATE t1 SET x=x+1;
  

SELECT * FROM t1
