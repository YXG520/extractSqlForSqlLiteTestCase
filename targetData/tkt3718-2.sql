
 SELECT sql(1, 'DELETE FROM t2 WHERE a = '||a ) FROM t2 WHERE a>5 
 SELECT a from t2 


    DELETE FROM t2 WHERE a > 5;
    BEGIN;
    INSERT INTO t2 SELECT a+5, sql(a==3,
        'INSERT INTO t2 SELECT a+10, f2(b) FROM t1'
    ) FROM t1;
  

    COMMIT;
    SELECT a FROM t2;
  


    DELETE FROM t2 WHERE a > 5;
    BEGIN;
    INSERT INTO t2 SELECT a+5, sql(a==3,
        'INSERT INTO t2 SELECT a+10, b FROM t1'
    ) FROM t1;
    COMMIT;
  
 SELECT a FROM t2 ORDER BY a+0
