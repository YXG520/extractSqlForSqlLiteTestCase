

    PRAGMA temp_store = file;
    PRAGMA page_size = 1024;
    PRAGMA cache_size = 50;
    CREATE TABLE t1(i INTEGER PRIMARY KEY, j UNIQUE);
    WITH s(i) AS (
      VALUES(1) UNION ALL SELECT i+1 FROM s WHERE i<1000
    )
    INSERT INTO t1 SELECT NULL, randomblob(100) FROM s;
  

 VACUUM 

