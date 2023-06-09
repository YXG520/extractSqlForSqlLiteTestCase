

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size=8192;
  PRAGMA journal_mode=WAL;
  CREATE TABLE t1(a,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<20)
    INSERT INTO t1(a,b) SELECT x, randomblob(1300) FROM c;
  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1b ON t1(b);
  SELECT sum(a), sum(length(b)) FROM t1;
  PRAGMA integrity_check;
  PRAGMA journal_mode;
  PRAGMA page_size;
  PRAGMA page_count;



    SELECT sum(a), sum(length(b)) FROM t1;
    PRAGMA integrity_check;
    PRAGMA journal_mode;
    PRAGMA page_size;
    PRAGMA page_count;
  


  UPDATE sqlite_dbpage SET data=randomblob(8192) WHERE pgno=1;
  PRAGMA quick_check



    PRAGMA quick_check
  
