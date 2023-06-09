
 
      DELETE FROM t2;
      INSERT INTO t2 SELECT a+5, b FROM t1;
      INSERT INTO t2 SELECT a+15, b FROM t1;
      INSERT INTO t2 SELECT a+25, b FROM t1;
    

      BEGIN;
      INSERT INTO t2 SELECT a+$i1, sql(a==3,
          'INSERT INTO t2 SELECT a+$i2, sql(a==3, 
             ''INSERT INTO t2 SELECT a+$i3, b FROM t1''
           ) FROM t1'
      ) FROM t1;
    
 COMMIT 
 SELECT a FROM t2 WHERE (a%5)==0 ORDER BY a+0


      SELECT 
        (SELECT sum(a) FROM t2)==(SELECT sum(a*5-10) FROM t2 WHERE (a%5)==0)
    
