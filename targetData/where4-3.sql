

    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2);
    INSERT INTO t2 VALUES(3);
    CREATE TABLE t3(x,y,UNIQUE("x",'y' ASC)); -- Goofy syntax allowed
    INSERT INTO t3 VALUES(1,11);
    INSERT INTO t3 VALUES(2,NULL);
 
    SELECT * FROM t2 LEFT JOIN t3 ON a=x WHERE +y IS NULL;
  


    SELECT * FROM t2 LEFT JOIN t3 ON a=x WHERE y IS NULL;
  


    SELECT * FROM t2 LEFT JOIN t3 ON a=x WHERE NULL is y;
  


    SELECT * FROM t2 LEFT JOIN t3 ON a=x WHERE y IS $null;
  
