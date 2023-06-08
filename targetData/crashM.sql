ATTACH 'file:test2.db?8_3_names=1' AS aux;

  CREATE TABLE t1(x, y);
  CREATE INDEX t1x ON t1(x);
  CREATE INDEX t1y ON t1(y);

  CREATE TABLE aux.t2(x, y);
  CREATE INDEX aux.t2x ON t2(x);
  CREATE INDEX aux.t2y ON t2(y);

  WITH s(a) AS (
    SELECT 1 UNION ALL SELECT a+1 FROM s WHERE a<1000
  )
  INSERT INTO t1 SELECT a, randomblob(500) FROM s;

  WITH s(a) AS (
    SELECT 1 UNION ALL SELECT a+1 FROM s WHERE a<1000
  )
  INSERT INTO t2 SELECT a, randomblob(500) FROM s;

sqlite3_shutdown
      sqlite3_config_uri 1
      sqlite3_multiplex_initialize crash 1
      sqlite3 db file:test1.db?8_3_names=1
      sqlite3_multiplex_control db main chunk_size [expr 64*1024]
    
PRAGMA main.integrity_check;
    PRAGMA aux.integrity_check;
  
