



    PRAGMA page_size=1024;
    PRAGMA journal_mode=DELETE;
    PRAGMA auto_vacuum=OFF;
  

    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, randomblob($g_chunk_size));
    INSERT INTO t1 VALUES(2, randomblob($g_chunk_size));
  



 VACUUM 

