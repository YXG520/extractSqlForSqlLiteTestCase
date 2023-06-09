

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size=4096;
  CREATE TABLE t1(a,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<20)
    INSERT INTO t1(a,b) SELECT x, randomblob(300) FROM c;
  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1b ON t1(b);
  SELECT sum(a), sum(length(b)) FROM t1;
  PRAGMA integrity_check;
  PRAGMA journal_mode;
  PRAGMA page_count;



    SELECT sum(a), sum(length(b)) FROM t1;
    PRAGMA integrity_check;
    PRAGMA journal_mode;
    PRAGMA page_count;
  
