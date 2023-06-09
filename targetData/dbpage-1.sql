

    PRAGMA auto_vacuum=0;
    PRAGMA page_size=4096;
    PRAGMA journal_mode=WAL;
  
 
    CREATE TABLE t1(a,b);
    WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
      INSERT INTO t1(a,b) SELECT x, printf('%d-x%.*c',x,x,'x') FROM c;
    PRAGMA integrity_check;
  


  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage('main') ORDER BY pgno;



  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=2;



  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=4;



  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=5;



  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=0;



  ATTACH ':memory:' AS aux1;
  PRAGMA aux1.page_size=4096;
  CREATE TABLE aux1.t2(a,b,c);
  INSERT INTO t2 VALUES(11,12,13);
  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage('aux1');



  CREATE TABLE aux1.x3(x,y,z);
  INSERT INTO x3(x,y,z) VALUES(1,'main',1),(2,'aux1',1);
  SELECT pgno, schema, substr(data,1,6)
    FROM sqlite_dbpage, x3
   WHERE sqlite_dbpage.schema=x3.y AND sqlite_dbpage.pgno=x3.z
   ORDER BY x3.x;

