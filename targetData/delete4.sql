CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
  INSERT INTO t1 VALUES(1, 0);
  INSERT INTO t1 VALUES(2, 1);
  INSERT INTO t1 VALUES(3, 0);
  INSERT INTO t1 VALUES(4, 1);
  INSERT INTO t1 VALUES(5, 0);
  INSERT INTO t1 VALUES(6, 1);
  INSERT INTO t1 VALUES(7, 0);
  INSERT INTO t1 VALUES(8, 1);

DELETE FROM t1 WHERE y=1;

SELECT x FROM t1;

CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z);
  INSERT INTO t1 VALUES(1, 0, randomblob(200));
  INSERT INTO t1 VALUES(2, 1, randomblob(200));
  INSERT INTO t1 VALUES(3, 0, randomblob(200));
  INSERT INTO t1 VALUES(4, 1, randomblob(200));
  INSERT INTO t1 VALUES(5, 0, randomblob(200));
  INSERT INTO t1 VALUES(6, 1, randomblob(200));
  INSERT INTO t1 VALUES(7, 0, randomblob(200));
  INSERT INTO t1 VALUES(8, 1, randomblob(200));

DELETE FROM t1 WHERE y=1;

SELECT x FROM t1;

CREATE TABLE t1(a, b, PRIMARY KEY(a, b)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(2, 4);
  INSERT INTO t1 VALUES(1, 5);
  DELETE FROM t1 WHERE a=1;
  SELECT printf('(%d)',changes());
  SELECT * FROM t1;

WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
     INSERT INTO t1(a,b) SELECT x, x+1 FROM c;
  SELECT printf('(%d)',changes());
  DELETE FROM t1;
  SELECT printf('(%d)',changes());

CREATE TABLE t1(i INTEGER PRIMARY KEY, a, b);
  CREATE INDEX i1a ON t1(a);
  CREATE INDEX i1b ON t1(b);
  INSERT INTO t1 VALUES(1, 'one', 'i');
  INSERT INTO t1 VALUES(2, 'two', 'ii');
  INSERT INTO t1 VALUES(3, 'three', 'iii');
  INSERT INTO t1 VALUES(4, 'four', 'iv');
  INSERT INTO t1 VALUES(5, 'one', 'i');
  INSERT INTO t1 VALUES(6, 'two', 'ii');
  INSERT INTO t1 VALUES(7, 'three', 'iii');
  INSERT INTO t1 VALUES(8, 'four', 'iv');

DELETE FROM t1 WHERE a='two' OR b='iv';

SELECT i FROM t1 ORDER BY i;

PRAGMA integrity_check; 

DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1);
  INSERT INTO "t4" VALUES(14, 'abcde');
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  CREATE INDEX idx_t4_3 ON t4 (col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;

DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1);
  INSERT INTO "t4" VALUES(14, 'abcde');
  CREATE INDEX idx_t4_3 ON t4 (col0);
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;

DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1, pk PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t4 VALUES(14, 'abcde','xyzzy');
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  CREATE INDEX idx_t4_3 ON t4 (col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;

DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(col0, col1, pk PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t4 VALUES(14, 'abcde','xyzzy');
  CREATE INDEX idx_t4_3 ON t4 (col0);
  CREATE INDEX idx_t4_0 ON t4 (col1, col0);
  DELETE FROM t4 WHERE col0=69 OR col0>7;
  PRAGMA integrity_check;

PRAGMA page_size=1024;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  CREATE INDEX x1 ON t1(b, c);
  INSERT INTO t1(a,b,c) VALUES(1, 1, zeroblob(80));
  INSERT INTO t1(a,b,c) SELECT a+1, 1, c FROM t1;
  INSERT INTO t1(a,b,c) SELECT a+2, 1, c FROM t1;
  INSERT INTO t1(a,b,c) SELECT a+10, 2, c FROM t1 WHERE b=1;
  INSERT INTO t1(a,b,c) SELECT a+20, 3, c FROM t1 WHERE b=1;
  PRAGMA reverse_unordered_selects = ON;
  DELETE FROM t1 WHERE b=2;
  SELECT a FROM t1 WHERE b=2;

CREATE TABLE t2(x INT);
  INSERT INTO t2(x) VALUES(1),(2),(3),(4),(5);
  DELETE FROM t2 WHERE EXISTS(SELECT 1 FROM t2 AS v WHERE v.x=t2.x-1);
  SELECT x FROM t2;

DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(x INT);
  INSERT INTO t2(x) VALUES(1),(2),(3),(4),(5);
  DELETE FROM t2 WHERE EXISTS(SELECT 1 FROM t2 AS v WHERE v.x=t2.x+1);
  SELECT x FROM t2;

CREATE TABLE t3(id INT PRIMARY KEY, a, b) WITHOUT ROWID;
  CREATE INDEX t3a ON t3(a);
  CREATE INDEX t3b ON t3(b);

  INSERT INTO t3 VALUES(1, 1, 1);
  INSERT INTO t3 VALUES(2, 2, 2);
  INSERT INTO t3 VALUES(3, 3, 3);
  INSERT INTO t3 VALUES(4, 4, 1);

DELETE FROM t3 WHERE a=4 OR b=1;

SELECT * FROM t3;

CREATE TABLE t4(a PRIMARY KEY, b) WITHOUT ROWID;
  CREATE INDEX t4i ON t4(b);
  INSERT INTO t4 VALUES(1, 'hello');
  INSERT INTO t4 VALUES(2, 'world');

  CREATE TABLE t5(a PRIMARY KEY, b) WITHOUT ROWID;
  CREATE INDEX t5i ON t5(b);
  INSERT INTO t5 VALUES(1, 'hello');
  INSERT INTO t5 VALUES(3, 'world');

  PRAGMA writable_schema = 1;
  UPDATE sqlite_master SET rootpage = (
    SELECT rootpage FROM sqlite_master WHERE name = 't5'
  ) WHERE name = 't4';

DELETE FROM t4 WHERE b='world'

CREATE TABLE t3(id INT PRIMARY KEY, a, b) WITHOUT ROWID;
  INSERT INTO t3 VALUES(1, 2, 3);
  INSERT INTO t3 VALUES(4, 5, 6);
  INSERT INTO t3 VALUES(7, 8, 9);
  CREATE TRIGGER t3t BEFORE DELETE ON t3 BEGIN
    DELETE FROM t3 WHERE id=old.id+3;
  END;

DELETE FROM t3 WHERE a IN(2, 5, 8);
  SELECT * FROM t3;

DROP TRIGGER t3t;
  INSERT INTO t3 VALUES(1, 2, 3);
  INSERT INTO t3 VALUES(4, 5, 6);
  INSERT INTO t3 VALUES(7, 8, 9);
  CREATE TRIGGER t3t BEFORE DELETE ON t3 BEGIN
    DELETE FROM t3 WHERE id=old.id;
  END;

DELETE FROM t3 WHERE a IN(2, 5, 8);
  SELECT * FROM t3;

