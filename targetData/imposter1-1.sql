

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c, d NOT NULL);
    CREATE INDEX t1b ON t1(b);
    CREATE UNIQUE INDEX t1c ON t1(c);
    WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<30)
      INSERT INTO t1(a,b,c,d) SELECT i,1000+i,2000+i,3000+i FROM c;
  


  SELECT rowid FROM xt1 WHERE a IS NOT NULL;



  SELECT a,b,c,d FROM t1 EXCEPT SELECT rowid,b,c,d FROM xt1;
  SELECT rowid,b,c,d FROM xt1 EXCEPT SELECT a,b,c,d FROM t1;



  DELETE FROM xt1 WHERE rowid=5;
  INSERT INTO xt1(rowid,a,b,c,d) VALUES(99,'hello',1099,2022,NULL);
  SELECT * FROM chnglog ORDER BY rowid;



  PRAGMA integrity_check;



  PRAGMA integrity_check;



  PRAGMA integrity_check;

