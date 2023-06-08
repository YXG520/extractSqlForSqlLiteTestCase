$db eval "DROP TABLE IF EXISTS temp.$tabname"
  set once 1
  $db eval $sql x {
    if {$once
CREATE TABLE t1(a,b,c PRIMARY KEY) WITHOUT rowid;
    CREATE INDEX t1a ON t1(a) WHERE a IS NOT NULL;
    CREATE INDEX t1b ON t1(b) WHERE b>10;
    CREATE VIRTUAL TABLE nums USING wholenumber;
    INSERT INTO t1(a,b,c)
       SELECT CASE WHEN value%3!=0 THEN value END, value, value
         FROM nums WHERE value<=20;
    SELECT count(a), count(b) FROM t1;
    PRAGMA integrity_check;
  
SELECT count(*) FROM t1;

CREATE INDEX bad1 ON t1(a,b) WHERE x IS NOT NULL;
  
CREATE INDEX bad1 ON t1(a,b) WHERE EXISTS(SELECT * FROM t1);
  
CREATE INDEX bad1 ON t1(a,b) WHERE a!=?1;
  
CREATE INDEX bad1 ON t1(a,b) WHERE a!=random();
  
CREATE INDEX bad1 ON t1(a,b) WHERE a NOT LIKE 'abc%';
  
INSERT INTO t1(a,b,c)
     VALUES('abcde',1,101),('abdef',2,102),('xyz',3,103),('abcz',4,104);
  SELECT c FROM t1 WHERE a NOT LIKE 'abc%' AND a=7 ORDER BY +b;

EXPLAIN QUERY PLAN
  SELECT b FROM t1 WHERE a NOT LIKE 'abc%' AND a=7 ORDER BY +b;

DELETE FROM t1 WHERE c>=101;
  DROP INDEX IF EXISTS bad1;

ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
UPDATE t1 SET a=b;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
UPDATE t1 SET a=NULL WHERE b%3!=0;
    UPDATE t1 SET b=b+100;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
UPDATE t1 SET a=CASE WHEN b%3!=0 THEN b END;
    UPDATE t1 SET b=b-100;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
DELETE FROM t1 WHERE b BETWEEN 8 AND 12;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
REINDEX;
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
CREATE INDEX t1c ON t1(c);
    ANALYZE;
    SELECT idx, stat FROM sqlite_stat1 ORDER BY idx;
    PRAGMA integrity_check;
  
CREATE TABLE t2(a,b PRIMARY KEY) without rowid;
    INSERT INTO t2(a,b) SELECT value, value FROM nums WHERE value<1000;
    UPDATE t2 SET a=NULL WHERE b%5==0;
    CREATE INDEX t2a1 ON t2(a) WHERE a IS NOT NULL;
    SELECT count(*) FROM t2 WHERE a IS NOT NULL;
  
EXPLAIN QUERY PLAN
    SELECT * FROM t2 WHERE a=5;
  
EXPLAIN QUERY PLAN
      SELECT * FROM t2 WHERE a IS NOT NULL;
    
EXPLAIN QUERY PLAN
      SELECT * FROM t2 WHERE a IS NOT NULL AND a>0;
    
EXPLAIN QUERY PLAN
    SELECT * FROM t2 WHERE a IS NULL;
  
DROP INDEX t2a1;
  UPDATE t2 SET a=b, b=b+10000;
  SELECT b FROM t2 WHERE a=15;

CREATE INDEX t2a2 ON t2(a) WHERE a<100 OR a>200;
  SELECT b FROM t2 WHERE a=15;
  PRAGMA integrity_check;

EXPLAIN QUERY PLAN
  SELECT b FROM t2 WHERE a=15;

SELECT b FROM t2 WHERE a=15 AND a<100;

EXPLAIN QUERY PLAN
  SELECT b FROM t2 WHERE a=15 AND a<100;

SELECT b FROM t2 WHERE a=515 AND a>200;

EXPLAIN QUERY PLAN
  SELECT b FROM t2 WHERE a=515 AND a>200;

CREATE TABLE t3(a,b PRIMARY KEY) without rowid;
  INSERT INTO t3 SELECT value, value FROM nums WHERE value<200;
  UPDATE t3 SET a=999 WHERE b%5!=0;
  CREATE UNIQUE INDEX t3a ON t3(a) WHERE a<>999;

INSERT INTO t3(a,b) VALUES(150, 'test1');
  
INSERT INTO t3(a,b) VALUES(999, 'test1'), (999, 'test2');
  
SELECT count(*) FROM t3 WHERE a=999;

VACUUM;
  PRAGMA integrity_check;

CREATE INDEX t3b ON t3(b) WHERE xyzzy.t3.b BETWEEN 5 AND 10;
                               /* ^^^^^-- ignored */
  ANALYZE;
  SELECT count(*) FROM t3 WHERE t3.b BETWEEN 5 AND 10;
  SELECT stat+0 FROM sqlite_stat1 WHERE idx='t3b';

CREATE TABLE t5(a, b);
  CREATE TABLE t4(c, d);
  INSERT INTO t5 VALUES(1, 'xyz');
  INSERT INTO t4 VALUES('abc', 'not xyz');
  SELECT * FROM (SELECT * FROM t5 WHERE a=1 AND b='xyz'), t4 WHERE c='abc';

CREATE INDEX i4 ON t4(c) WHERE d='xyz';
  SELECT * FROM (SELECT * FROM t5 WHERE a=1 AND b='xyz'), t4 WHERE c='abc';

CREATE VIEW v4 AS SELECT * FROM t4;
  INSERT INTO t4 VALUES('def', 'xyz');
  SELECT * FROM v4 WHERE d='xyz' AND c='def'

CREATE INDEX t5a ON t5(a) WHERE a=#1;

CREATE TABLE t6(x, y);
  INSERT INTO t6 VALUES(1, 1);
  INSERT INTO t6 VALUES(0, 0);
  SELECT * FROM t6 WHERE y IS TRUE ORDER BY x;

CREATE INDEX i6 ON t6(x) WHERE y IS NOT TRUE;
  SELECT * FROM t6 WHERE y IS TRUE ORDER BY x;

CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
  CREATE INDEX t1y ON t1(y) WHERE y IS NOT NULL;
  INSERT INTO t1(x) VALUES(1),(2);
  ANALYZE;
  EXPLAIN QUERY PLAN SELECT 1 FROM t1 WHERE y=5;
