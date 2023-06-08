CREATE TABLE t1(a,b,c);
  CREATE INDEX t1bc ON t1(b,c);

  EXPLAIN QUERY PLAN
  SELECT DISTINCT a, b, c FROM t1 WHERE a=0;

EXPLAIN QUERY PLAN
  SELECT DISTINCT a, c, b FROM t1 WHERE a=0;

EXPLAIN QUERY PLAN
  SELECT DISTINCT a, c, b FROM t1 WHERE a='xyz' COLLATE nocase;

EXPLAIN QUERY PLAN
  SELECT DISTINCT a COLLATE nocase, c, b FROM t1 WHERE a='xyz';

EXPLAIN QUERY PLAN
  SELECT DISTINCT a COLLATE nocase, c, b FROM t1 WHERE a='xyz' COLLATE nocase;

EXPLAIN QUERY PLAN
  SELECT DISTINCT b, a, c FROM t1 WHERE a=0;

EXPLAIN QUERY PLAN
  SELECT DISTINCT b, c, a FROM t1 WHERE a=0;

EXPLAIN QUERY PLAN
  SELECT DISTINCT c, a, b FROM t1 WHERE a=0;

EXPLAIN QUERY PLAN
  SELECT DISTINCT c, b, a FROM t1 WHERE a=0;

EXPLAIN QUERY PLAN
  SELECT DISTINCT c, b, a FROM t1 WHERE +a=0;

CREATE TABLE t2(a,b,c);
  CREATE INDEX t2bc ON t2(b,c);
  ANALYZE;
  INSERT INTO sqlite_stat1 VALUES('t1','t1bc','1000000 10 9');
  INSERT INTO sqlite_stat1 VALUES('t2','t2bc','100 10 5');
  ANALYZE sqlite_master;

  EXPLAIN QUERY PLAN
  SELECT * FROM t2 WHERE a=0 ORDER BY a, b, c;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE likelihood(a=0, 0.03) ORDER BY a, b, c;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE +a=0 ORDER BY a, b, c;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a=0 ORDER BY b, a, c;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a=0 ORDER BY b, c, a;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a=0 ORDER BY a, c, b;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a=0 ORDER BY c, a, b;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a=0 ORDER BY c, b, a;

CREATE TABLE t3(a INTEGER PRIMARY KEY, b, c, d, e, f);
  CREATE INDEX t3bcde ON t3(b, c, d, e);
  EXPLAIN QUERY PLAN
  SELECT a FROM t3 WHERE b=2 AND c=3 ORDER BY d DESC, e DESC, b, c, a DESC;

DROP TABLE t3;
  CREATE TABLE t3(a INTEGER PRIMARY KEY, b, c, d, e, f) WITHOUT rowid;
  CREATE INDEX t3bcde ON t3(b, c, d, e);
  EXPLAIN QUERY PLAN
  SELECT a FROM t3 WHERE b=2 AND c=3 ORDER BY d DESC, e DESC, b, c, a DESC;

CREATE TABLE t4(b COLLATE nocase);
  INSERT INTO t4 VALUES('abc');
  INSERT INTO t4 VALUES('ABC');
  INSERT INTO t4 VALUES('aBC');

SELECT * FROM t4 ORDER BY b COLLATE binary

SELECT * FROM t4 WHERE b='abc' ORDER BY b COLLATE binary

CREATE TABLE Records(typeID INTEGER, key TEXT COLLATE nocase, value TEXT);
  CREATE INDEX RecordsIndex ON Records(typeID, key, value);

explain query plan
  SELECT typeID, key, value FROM Records 
  WHERE typeID = 2 AND key = 'x' 
  ORDER BY key, value;

explain query plan
  SELECT typeID, key, value FROM Records 
  WHERE typeID = 2 AND (key = 'x' COLLATE binary)
  ORDER BY key, value;

explain query plan
  SELECT typeID, key, value FROM Records 
  WHERE typeID = 2 
  ORDER BY key, value;

CREATE TABLE t5(a INTEGER PRIMARY KEY, b COLLATE hello, c, d);

SELECT a FROM t5 WHERE b='def' ORDER BY b;

DROP TABLE t1;
  CREATE TABLE t1(a);
  DROP TABLE t2;
  CREATE TABLE t2(b INTEGER PRIMARY KEY, c INT);
  SELECT DISTINCT *
    FROM t1 LEFT JOIN t2 ON b=c AND b=(SELECT a FROM t1)
   WHERE c>10;

