

  DELETE FROM t1;
  WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<10)
   INSERT INTO t1(a,b,c,d) SELECT i,i,i,i FROM c;
  UPDATE xt1c SET c=NULL WHERE rowid=5;
  PRAGMA integrity_check;



  DELETE FROM t1;
  WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<10)
   INSERT INTO t1(a,b,c,d) SELECT i,i,i,i FROM c;
  UPDATE xt1c SET c=99 WHERE rowid IN (5,7,9);
  SELECT c FROM t1 ORDER BY c;



  UPDATE xt1 SET c=99 WHERE rowid IN (5,7,9);
  PRAGMA integrity_check;

