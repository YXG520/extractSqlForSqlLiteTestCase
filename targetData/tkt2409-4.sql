

    PRAGMA cache_size=20;
    DROP TABLE t1;
    CREATE TABLE t1 (x TEXT UNIQUE NOT NULL);
  

INSERT INTO t1 VALUES('some-text-$r');


 ROLLBACK 
