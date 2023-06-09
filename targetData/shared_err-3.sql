

    PRAGMA read_uncommitted = 1;
    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
  
INSERT INTO t1 VALUES($a, $b)
COMMIT
SELECT a FROM t1 ORDER BY a

    BEGIN;
    INSERT INTO t1 VALUES('201.201.201.201.201', NULL);
    UPDATE t1 SET a = '202.202.202.202.202' WHERE a LIKE '201%';
    COMMIT;
  



select * from sqlite_master


    PRAGMA read_uncommitted = 1;
    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
  
INSERT INTO t1 VALUES($a, $b)
COMMIT

    BEGIN;
    INSERT INTO t1 VALUES('201.201.201.201.201', NULL);
    UPDATE t1 SET a = '202.202.202.202.202' WHERE a LIKE '201%';
    COMMIT;
  
