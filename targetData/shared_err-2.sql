

    PRAGMA read_uncommitted = 1;
    BEGIN;
    CREATE TABLE t1(a, b);
    INSERT INTO t1(oid) VALUES(NULL);
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    UPDATE t1 set a = oid, b = 'abcdefghijklmnopqrstuvwxyz0123456789';
    CREATE INDEX i1 ON t1(a);
    COMMIT;
    BEGIN;
    SELECT * FROM sqlite_master;
  
DELETE FROM t1 WHERE 0 = (a % 2);
BEGIN;
INSERT INTO t1 SELECT a+1, b FROM t1;
INSERT INTO t1 SELECT 'string' || a, b FROM t1 WHERE 0 = (a%7);
COMMIT;


      SELECT max(a), min(a), count(*) FROM (SELECT a FROM t1 order by a);
    
