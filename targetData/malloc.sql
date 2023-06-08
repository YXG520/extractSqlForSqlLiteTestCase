error "out of memory"
    
DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(
       a int, b float, c double, d text, e varchar(20),
       primary key(a,b,c)
    );
    CREATE INDEX i1 ON t1(a,b);
    INSERT INTO t1 VALUES(1,2.3,4.5,'hi',x'746865726500');
    INSERT INTO t1 VALUES(6,7.0,0.8,'hello','out yonder');
    SELECT * FROM t1;
    SELECT avg(b) FROM t1 GROUP BY a HAVING b>20.0;
    DELETE FROM t1 WHERE a IN (SELECT min(a) FROM t1);
    SELECT count(*), group_concat(e) FROM t1;
    SELECT b FROM t1 ORDER BY 1 COLLATE nocase;
  
CREATE TABLE t1(a int, b int default 'abc', c int default 1);
    CREATE INDEX i1 ON t1(a,b);
    INSERT INTO t1 VALUES(1,1,'99 abcdefghijklmnopqrstuvwxyz');
    INSERT INTO t1 VALUES(2,4,'98 abcdefghijklmnopqrstuvwxyz');
    INSERT INTO t1 VALUES(3,9,'97 abcdefghijklmnopqrstuvwxyz');
    INSERT INTO t1 VALUES(4,16,'96 abcdefghijklmnopqrstuvwxyz');
    INSERT INTO t1 VALUES(5,25,'95 abcdefghijklmnopqrstuvwxyz');
    INSERT INTO t1 VALUES(6,36,'94 abcdefghijklmnopqrstuvwxyz');
    SELECT 'stuff', count(*) as 'other stuff', max(a+10) FROM t1;
    UPDATE t1 SET b=b||b||b||b;
    UPDATE t1 SET b=a WHERE a in (10,12,22);
    INSERT INTO t1(c,b,a) VALUES(20,10,5);
    INSERT INTO t1 SELECT * FROM t1
        WHERE a IN (SELECT a FROM t1 WHERE a<10);
    DELETE FROM t1 WHERE a>=10;
    DROP INDEX i1;
    DELETE FROM t1;
  
BEGIN TRANSACTION;
  CREATE TABLE t1(a int, b int, c int);
  CREATE INDEX i1 ON t1(a,b);
  INSERT INTO t1 VALUES(1,1,99);
  INSERT INTO t1 VALUES(2,4,98);
  INSERT INTO t1 VALUES(3,9,97);
  INSERT INTO t1 VALUES(4,16,96);
  INSERT INTO t1 VALUES(5,25,95);
  INSERT INTO t1 VALUES(6,36,94);
  INSERT INTO t1(c,b,a) VALUES(20,10,5);
  DELETE FROM t1 WHERE a>=10;
  DROP INDEX i1;
  DELETE FROM t1;
  ROLLBACK;

BEGIN TRANSACTION;
    CREATE TABLE t1(a int, b int, c int);
    CREATE INDEX i1 ON t1(a,b);
    INSERT INTO t1 VALUES(1,1,99);
    INSERT INTO t1 VALUES(2,4,98);
    INSERT INTO t1 VALUES(3,9,97);
    INSERT INTO t1 VALUES(4,16,96);
    INSERT INTO t1 VALUES(5,25,95);
    INSERT INTO t1 VALUES(6,36,94);
    UPDATE t1 SET b=a WHERE a in (10,12,22);
    INSERT INTO t1 SELECT * FROM t1
       WHERE a IN (SELECT a FROM t1 WHERE a<10);
    DROP INDEX i1;
    DELETE FROM t1;
    COMMIT;
  
BEGIN TRANSACTION;
    CREATE TABLE t1(a,b);
    CREATE TABLE t2(x,y);
    CREATE TRIGGER r1 AFTER INSERT ON t1 WHEN new.a = 2 BEGIN
      INSERT INTO t2(x,y) VALUES(new.rowid,1);
      INSERT INTO t2(x,y) SELECT * FROM t2;
      INSERT INTO t2 SELECT * FROM t2;
      UPDATE t2 SET y=y+1 WHERE x=new.rowid;
      SELECT 123;
      DELETE FROM t2 WHERE x=new.rowid;
    END;
    INSERT INTO t1(a,b) VALUES(2,3);
    COMMIT;
  
BEGIN TRANSACTION;
    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    INSERT INTO t1 SELECT a*2 FROM t1;
    DELETE FROM t1 where rowid%5 = 0;
    COMMIT;
  
VACUUM;
  
CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  INSERT INTO t1 VALUES(5, 6);
  INSERT INTO t1 VALUES(7, randstr(1200,1200));

SELECT min(a) FROM t1 WHERE a<6 GROUP BY b;
  SELECT a FROM t1 WHERE a<6 ORDER BY a;
  SELECT b FROM t1 WHERE a>6;

error "out of memory"
#  error "out of memory"
    #
ATTACH 'test2.db' as test2;
  CREATE TABLE abc1(a, b, c);
  CREATE TABLE test2.abc2(a, b, c);

BEGIN;
  INSERT INTO abc1 VALUES(1, 2, 3);
  INSERT INTO abc2 VALUES(1, 2, 3);
  COMMIT;

set rc [sqlite3_create_aggregate db]
  
error "out of memory"
  
ATTACH 'test2.db' as aux;
      PRAGMA cache_size = 10;
      BEGIN;
      CREATE TABLE aux.t2(a, b, c);
      CREATE TABLE t1(a, b, c);
      COMMIT;
    
set msg "out of memory"
CREATE TABLE t1(a, b COLLATE string_compare);
      INSERT INTO t1 VALUES(10, 'string');
      INSERT INTO t1 VALUES(10, 'string2');
    
SELECT * FROM sqlite_master
error "out of memory"
    
error "out of memory"
    
error [sqlite3_errmsg $DB2]
    
error [sqlite3_errmsg $DB2]
    
PRAGMA encoding = "UTF16be";
    CREATE TABLE abc(a, b, c);
  
SELECT ?
error "out of memory"
    
ATTACH DATABASE 'test2.db' AS t2;
    SELECT * FROM t1;
    DETACH DATABASE t2;
  
CREATE TABLE abc(a, b, c, FOREIGN KEY(a) REFERENCES abc(b))
  
CREATE TABLE t1(a, b, c)
  
SELECT 1 FROM t1 UNION SELECT 2 FROM t1 ORDER BY 1
  
CREATE TABLE t1(a, b, c);
    CREATE VIEW v1 AS SELECT * FROM t1;
    CREATE TRIGGER v1t1 INSTEAD OF DELETE ON v1 BEGIN SELECT 1; END;
    CREATE TRIGGER v1t2 INSTEAD OF INSERT ON v1 BEGIN SELECT 1; END;
    CREATE TRIGGER v1t3 INSTEAD OF UPDATE ON v1 BEGIN SELECT 1; END;
  
DELETE FROM v1 WHERE a = 1;
    INSERT INTO v1 VALUES(1, 2, 3);
    UPDATE v1 SET a = 1 WHERE b = 2;
  
CREATE TABLE abc(a, b, c);
  CREATE INDEX i1 ON abc(a, b);
  INSERT INTO abc VALUES(1, 2, 3);
  INSERT INTO abc VALUES(4, 5, 6);

BEGIN;
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, randomblob(210));
  INSERT INTO t1 VALUES(1, randomblob(210));
  INSERT INTO t1 VALUES(1, randomblob(210));
  INSERT INTO t1 VALUES(1, randomblob(210));
  INSERT INTO t1 VALUES(1, randomblob(210));
  COMMIT;

error "out of memory"
  
CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a);
  CREATE VIEW v1 AS SELECT * FROM t1 INDEXED BY i1 WHERE a = 10;

SELECT * FROM t1 INDEXED BY i1 ORDER BY a;
  SELECT * FROM v1;

CREATE TABLE t1(a TEXT, b TEXT);

INSERT INTO t1 VALUES(1, -234);
  INSERT INTO t1 SELECT * FROM t1 UNION ALL SELECT * FROM t1;

-- This statement requires the 'no-content' pages loaded by the DELETE
  -- statement above. When requesting the pages, the content is loaded
  -- from the database file. The point of this test case is to test handling
  -- of malloc errors (including SQLITE_IOERR_NOMEM errors) when loading
  -- the content.
  SELECT * FROM t1 ORDER BY x;

PRAGMA journal_mode = persist;
  PRAGMA journal_size_limit = 1024;
  CREATE TABLE t1(a PRIMARY KEY, b);

INSERT INTO t1 VALUES(1, 2);

PRAGMA integrity_check
SELECT count(*) FROM abc;

SELECT count(*) FROM abc;

CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);

SELECT test_agg_errmsg16(), group_concat(a) FROM t1

CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    
SELECT * FROM t1;
  
INSERT INTO t1 VALUES(3, 4)
SELECT test_auxdata('abc', 'def');

CREATE TABLE t1(a);
  INSERT INTO t1 VALUES('fghij');
  INSERT INTO t1 VALUES('pqrst');
  INSERT INTO t1 VALUES('abcde');
  INSERT INTO t1 VALUES('uvwxy');
  INSERT INTO t1 VALUES('klmno');

SELECT * FROM t1 ORDER BY 1 COLLATE utf16bin;

SELECT * FROM t1 ORDER BY 1 COLLATE utf16bin;
  
DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a COLLATE utf16bin);
  INSERT INTO t1 VALUES('fghij' || $::big);
  INSERT INTO t1 VALUES('pqrst' || $::big);
  INSERT INTO t1 VALUES('abcde' || $::big);
  INSERT INTO t1 VALUES('uvwxy' || $::big);
  INSERT INTO t1 VALUES('klmno' || $::big);
  CREATE INDEX i1 ON t1(a);

SELECT * FROM t1 WHERE a = ('abcde' || $::big)
CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z);
  CREATE TABLE t2(a, b);
  CREATE VIEW a002 AS SELECT *, sum(b) AS m FROM t2 GROUP BY a;

SELECT * FROM sqlite_master 
SELECT t1.z, a002.m
    FROM t1 JOIN a002 ON t1.y=a002.m
    WHERE t1.x IN (1,2,3);
  
