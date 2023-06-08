CREATE TABLE t1(a, b, c, PRIMARY KEY(a));
    INSERT INTO t1 VALUES('abc', 'def', 'ghi');
    ATTACH 'test.db2' AS 'aux';
    CREATE TABLE aux.t2(x);
    INSERT INTO t2 VALUES(1);
  
PRAGMA synchronous=OFF;
    CREATE TABLE t1(a, b);
    BEGIN;
      SELECT * FROM t1;
  
INSERT INTO t1 VALUES(randomblob(10000), randomblob(10000));
    SELECT length(a) + length(b) FROM t1;
    COMMIT;
  
CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);

PRAGMA mmap_size = 1000000;
  
SELECT * FROM t1;
  
