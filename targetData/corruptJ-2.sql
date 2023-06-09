

    PRAGMA page_size=1024;
    PRAGMA auto_vacuum=0;
    CREATE TABLE t1(a,b,PRIMARY KEY(a,b)) WITHOUT ROWID;
    WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<100)
      INSERT INTO t1(a,b) SELECT i, zeroblob(200) FROM c;
  


 PRAGMA secure_delete=ON; DROP TABLE t1; 
