

      UPDATE t1 SET e=e+1 WHERE b IN (SELECT b FROM t1);
      SELECT b,e FROM t1;
    


      UPDATE t1 SET e=e+1 WHERE a IN (SELECT a FROM t1);
      SELECT a,e FROM t1;
    


      UPDATE t1 AS xyz SET e=e+1 WHERE xyz.a IN (SELECT a FROM t1);
      SELECT a,e FROM t1;
    


      UPDATE t1 AS xyz SET e=e+1 WHERE EXISTS(SELECT 1 FROM t1 WHERE t1.a<xyz.a);
      SELECT a,e FROM t1;
    
