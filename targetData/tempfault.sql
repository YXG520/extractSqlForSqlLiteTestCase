INSERT INTO t1 VALUES(5, 6) 
SELECT * FROM t1 
UPDATE t1 SET a = randomblob(99) 
PRAGMA page_size = 1024;
      PRAGMA cache_size = 10;
      CREATE TABLE t1(a, b);
      CREATE INDEX i1 ON t1(b, a);
      WITH x(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<100)
          INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x;
    
UPDATE t1 SET a = randomblob(99) 
BEGIN;
      UPDATE t1 SET a = randomblob(99);
      SAVEPOINT abc;
        UPDATE t1 SET a = randomblob(98) WHERE (rowid%10)==0;
      ROLLBACK TO abc;
        UPDATE t1 SET a = randomblob(97) WHERE (rowid%5)==0;
      ROLLBACK TO abc;
    COMMIT;
  
BEGIN;
      UPDATE t1 SET a = randomblob(99);
      SAVEPOINT abc;
        UPDATE t1 SET a = randomblob(98) WHERE (rowid%10)==0;
      ROLLBACK TO abc;
        UPDATE t1 SET a = randomblob(97) WHERE (rowid%5)==0;
      ROLLBACK TO abc;
    COMMIT;
  
