PRAGMA page_size = 4096;
  CREATE TABLE t0(a INTEGER PRIMARY KEY, b, c, UNIQUE(b, c));
  WITH  s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 100 )
  INSERT INTO t0 SELECT i, 't0', randomblob(800) FROM s;

PRAGMA main.mmap_size
  
t
