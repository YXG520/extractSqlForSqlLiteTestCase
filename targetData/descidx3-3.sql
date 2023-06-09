

    UPDATE t1 SET a=1;
    SELECT i FROM t1 ORDER BY a;
  


    SELECT i FROM t1 WHERE a=1 AND b>0 AND b<'zzz'
  


    SELECT i FROM t1 WHERE b>0 AND b<'zzz'
  


    SELECT i FROM t1 WHERE a=1 AND b>-9999 AND b<x'ffffffff'
  


    SELECT i FROM t1 WHERE b>-9999 AND b<x'ffffffff'
  
