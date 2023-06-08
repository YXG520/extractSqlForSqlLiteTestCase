CREATE TABLE t1x(x INTEGER PRIMARY KEY);
    INSERT INTO t1x VALUES(1),(3),(5),(7),(9);
    CREATE TABLE t1y(y INTEGER UNIQUE);
    INSERT INTO t1y VALUES(2),(4),(6),(8);
    CREATE TABLE t1z(z TEXT UNIQUE);
    INSERT INTO t1z VALUES('a'),('c'),('e'),('g');
    CREATE TABLE t2(a INTEGER, b INTEGER, c TEXT, d TEXT);
    INSERT INTO t2 VALUES(1,2,'a','12a'),(1,2,'b','12b'),
                         (2,3,'g','23g'),(3,5,'c','35c'),
                         (4,6,'h','46h'),(5,6,'e','56e');
    CREATE TABLE t3x AS SELECT x FROM t1x;
    CREATE TABLE t3y AS SELECT y FROM t1y;
    CREATE TABLE t3z AS SELECT z FROM t1z;
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY c;
  
SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  
SELECT d FROM t2 WHERE a IN t3x AND b IN t3y AND c IN t3z ORDER BY d;
  
CREATE INDEX t2abc ON t2(a,b,c);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  
SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  
SELECT d FROM t2 WHERE a IN t3x AND b IN t3y AND c IN t3z ORDER BY d;
  
DROP INDEX t2abc;
    CREATE INDEX t2ab ON t2(a,b);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  
SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  
DROP INDEX t2ab;
    CREATE INDEX t2abcd ON t2(a,b,c,d);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  
SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  
DROP INDEX t2abcd;
    CREATE INDEX t2cbad ON t2(c,b,a,d);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  
SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  
CREATE TABLE t1(a COLLATE nocase);
  INSERT INTO t1 VALUES('one');
  INSERT INTO t1 VALUES('ONE');

SELECT count(*) FROM t1 WHERE a COLLATE BINARY IN (SELECT DISTINCT a FROM t1)

CREATE TABLE t3(a, b);
  INSERT INTO t3 VALUES(1, 1);
  INSERT INTO t3 VALUES(1, 2);
  INSERT INTO t3 VALUES(1, 3);
  INSERT INTO t3 VALUES(2, 4);
  INSERT INTO t3 VALUES(2, 5);
  INSERT INTO t3 VALUES(2, 6);
  INSERT INTO t3 VALUES(3, 7);
  INSERT INTO t3 VALUES(3, 8);
  INSERT INTO t3 VALUES(3, 9);

SELECT count(*) FROM t3 WHERE b IN (SELECT DISTINCT a FROM t3 LIMIT 5);

SELECT count(*) FROM t3 WHERE b IN (SELECT          a FROM t3 LIMIT 5);

CREATE TABLE x1(a);
  CREATE TABLE x2(b);
  INSERT INTO x1 VALUES(1), (1), (2);
  INSERT INTO x2 VALUES(1), (2);
  SELECT count(*) FROM x2 WHERE b IN (SELECT DISTINCT a FROM x1 LIMIT 2);

CREATE TABLE y1(a, b);
  CREATE TABLE y2(c);

  INSERT INTO y1 VALUES(1,     'one');
  INSERT INTO y1 VALUES('two', 'two');
  INSERT INTO y1 VALUES(3,     'three');

  INSERT INTO y2 VALUES('one');
  INSERT INTO y2 VALUES('two');
  INSERT INTO y2 VALUES('three');

SELECT a FROM y1 WHERE b NOT IN (SELECT a FROM y2);

SELECT a FROM y1 WHERE b IN (SELECT a FROM y2);

CREATE INDEX y2c ON y2(c);
  SELECT a FROM y1 WHERE b NOT IN (SELECT a FROM y2);

SELECT a FROM y1 WHERE b IN (SELECT a FROM y2);

CREATE TABLE n1(a INTEGER PRIMARY KEY, b VARCHAR(500));
  CREATE UNIQUE INDEX n1a ON n1(a);

SELECT count(*) FROM n1 WHERE a IN (1, 2, 3)

SELECT count(*) FROM n1 WHERE a IN (SELECT +a FROM n1)

INSERT INTO n1 VALUES(1, NULL), (2, NULL), (3, NULL);
  SELECT count(*) FROM n1 WHERE a IN (1, 2, 3)

SELECT count(*) FROM n1 WHERE a IN (SELECT +a FROM n1)

CREATE TABLE t9(a INTEGER PRIMARY KEY);
  INSERT INTO t9 VALUES (44), (45);

SELECT * FROM t9 WHERE a IN (44, 45, 44, 45)

CREATE TABLE t0(c0);
  CREATE VIEW v0(c0) AS SELECT LOWER(CAST('1e500' AS TEXT)) FROM t0;
  INSERT INTO t0(c0) VALUES (NULL);

SELECT lower('1e500') FROM t0 WHERE rowid NOT IN (0, 0, lower('1e500'));

SELECT lower('1e500') FROM t0 WHERE rowid != lower('1e500');
