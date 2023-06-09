
 
      DELETE FROM t2;
      INSERT INTO t2 SELECT a+5, b FROM t1;
      INSERT INTO t2 SELECT a+15, b FROM t1;
    

      BEGIN;
      INSERT INTO t2 SELECT a+$io, sql(a==3,
          'INSERT INTO t2 SELECT a+$ii, b FROM t1'
      ) FROM t1;
    
 COMMIT 
 SELECT a FROM t2 ORDER BY a+0
