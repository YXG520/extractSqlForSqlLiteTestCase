

  PRAGMA query_only;



  PRAGMA query_only=OFF;
  PRAGMA query_only;



  INSERT INTO t1 VALUES(789);
  SELECT a FROM t1 ORDER BY a;



  UPDATE t1 SET a=a+1;
  SELECT a FROM t1 ORDER BY a;

