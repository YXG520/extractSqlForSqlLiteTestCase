

    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(b);
    INSERT INTO t1 VALUES('a', 'b', 'c');
    PRAGMA integrity_check;
  


    SELECT * FROM t1;
  


    PRAGMA integrity_check;
  
