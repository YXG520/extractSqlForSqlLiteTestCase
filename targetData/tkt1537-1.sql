

    CREATE TABLE t1(id, a1, a2);
    INSERT INTO t1 VALUES(1, NULL, NULL);
    INSERT INTO t1 VALUES(2, 1, 3);
    CREATE TABLE t2(id, b);
    INSERT INTO t2 VALUES(3, 1);
    INSERT INTO t2 VALUES(4, NULL);
    SELECT * FROM t1 LEFT JOIN t2 ON a1=b OR a2=+b;
  


    SELECT * FROM t1 LEFT JOIN t2 ON a1=b OR a2=b;
  


    SELECT * FROM t2 LEFT JOIN t1 ON a1=b OR a2=b;
  


      SELECT * FROM t1 LEFT JOIN t2 ON b IN (a1,a2);
    


      SELECT * FROM t2 LEFT JOIN t1 ON b IN (a2,a1);
    


    CREATE INDEX t1a1 ON t1(a1);
    CREATE INDEX t1a2 ON t1(a2);
    CREATE INDEX t2b ON t2(b);
    SELECT * FROM t1 LEFT JOIN t2 ON a1=b OR a2=b;
  


    SELECT * FROM t2 LEFT JOIN t1 ON a1=b OR a2=b;
  


      SELECT * FROM t1 LEFT JOIN t2 ON b IN (a1,a2);
    


      SELECT * FROM t2 LEFT JOIN t1 ON b IN (a2,a1);
    

  DROP INDEX t1a1;
  DROP INDEX t1a2;
  DROP INDEX t2b;

