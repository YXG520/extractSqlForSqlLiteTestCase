CREATE TABLE t1(x, y);

ATTACH 'test.db2' AS aux1;
CREATE TABLE t1(x) 
BEGIN;
        INSERT INTO t1 VALUES(1);
    
COMMIT;
      PRAGMA journal_mode = wal;
      INSERT INTO t1 VALUES(2);
    
SELECT * FROM t1;
  
DELETE FROM t1;
    PRAGMA journal_mode = delete;
  
PRAGMA journal_mode = wal;
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES('hello', 'world');
  
CREATE TABLE xyz(x, y, z);
  INSERT INTO xyz VALUES(1, 2, 3);

SELECT * FROM xyz;

SELECT * FROM xyz;

