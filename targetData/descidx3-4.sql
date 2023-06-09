

      UPDATE t1 SET a=2 WHERE i<6;
      SELECT i FROM t1 WHERE a IN (1,2) AND b>0 AND b<'zzz';
    


      UPDATE t1 SET a=1;
      SELECT i FROM t1 WHERE a IN (1,2) AND b>0 AND b<'zzz';
    


      UPDATE t1 SET b=2;
      SELECT i FROM t1 WHERE a IN (1,2) AND b>0 AND b<'zzz';
    
