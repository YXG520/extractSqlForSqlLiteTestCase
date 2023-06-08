ATTACH 'test.db2' AS aux;

  CREATE TABLE main.t1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TEMP TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);

  CREATE TABLE main.x1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TEMP TABLE x2(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TABLE aux.x3(a INTEGER PRIMARY KEY, b TEXT, c BLOB);

  INSERT INTO main.t1 VALUES(1, 'main one', X'0101');
  INSERT INTO main.t1 VALUES(2, 'main two', X'0102');
  INSERT INTO main.t1 VALUES(3, 'main three', X'0103');
  INSERT INTO main.t1 VALUES(4, 'main four', X'0104');
  INSERT INTO main.t1 VALUES(5, 'main five', X'0105');

  INSERT INTO main.x1 VALUES(1, 'x main one', X'000101');
  INSERT INTO main.x1 VALUES(2, 'x main two', X'000102');
  INSERT INTO main.x1 VALUES(3, 'x main three', X'000103');
  INSERT INTO main.x1 VALUES(4, 'x main four', X'000104');
  INSERT INTO main.x1 VALUES(5, 'x main five', X'000105');

  INSERT INTO temp.t1 VALUES(1, 'temp one', X'0201');
  INSERT INTO temp.t1 VALUES(2, 'temp two', X'0202');
  INSERT INTO temp.t1 VALUES(3, 'temp three', X'0203');
  INSERT INTO temp.t1 VALUES(4, 'temp four', X'0204');
  INSERT INTO temp.t1 VALUES(5, 'temp five', X'0205');

  INSERT INTO temp.x2 VALUES(1, 'x temp one', X'000201');
  INSERT INTO temp.x2 VALUES(2, 'x temp two', X'000202');
  INSERT INTO temp.x2 VALUES(3, 'x temp three', X'000203');
  INSERT INTO temp.x2 VALUES(4, 'x temp four', X'000204');
  INSERT INTO temp.x2 VALUES(5, 'x temp five', X'000205');

  INSERT INTO aux.t1 VALUES(1, 'aux one', X'0301');
  INSERT INTO aux.t1 VALUES(2, 'aux two', X'0302');
  INSERT INTO aux.t1 VALUES(3, 'aux three', X'0303');
  INSERT INTO aux.t1 VALUES(4, 'aux four', X'0304');
  INSERT INTO aux.t1 VALUES(5, 'aux five', X'0305');

  INSERT INTO aux.x3 VALUES(1, 'x aux one', X'000301');
  INSERT INTO aux.x3 VALUES(2, 'x aux two', X'000302');
  INSERT INTO aux.x3 VALUES(3, 'x aux three', X'000303');
  INSERT INTO aux.x3 VALUES(4, 'x aux four', X'000304');
  INSERT INTO aux.x3 VALUES(5, 'x aux five', X'000305');

SELECT c FROM x1 WHERE a=$iRow;
    
SELECT c FROM x1 WHERE a=$iRow;
    
CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES('abcd', 152);
  INSERT INTO t1 VALUES(NULL, X'00010203');
  INSERT INTO t1 VALUES('', 154.2);

  CREATE TABLE t2(x PRIMARY KEY, y) WITHOUT ROWID;
  INSERT INTO t2 VALUES(1, 'blob');

  CREATE TABLE t3(a PRIMARY KEY, b, c, d, e, f, UNIQUE(e, f));
  INSERT INTO t3 VALUES('aaaa', 'bbbb', 'cccc', 'dddd', 'eeee', 'ffff');
  CREATE INDEX t3b ON t3(b);

  CREATE TABLE p1(x PRIMARY KEY);
  INSERT INTO p1 VALUES('abc');

  CREATE TABLE c1(a INTEGER PRIMARY KEY, b REFERENCES p1);
  INSERT INTO c1 VALUES(45, 'abc');

set expected "0 {
PRAGMA foreign_keys = ON 
not an error

not an error
CREATE TABLE b1(a INTEGER PRIMARY KEY, b, c UNIQUE);
  INSERT INTO b1 VALUES(1, '1234567890', 1);
  INSERT INTO b1 VALUES(2, '1234567890', 2);
  INSERT INTO b1 VALUES(3, '1234567890', 3);
  INSERT INTO b1 VALUES(4, '1234567890', 4);
  INSERT INTO b1 VALUES(5, '1234567890', 5);
  INSERT INTO b1 VALUES(6, '1234567890', 6);

  CREATE TABLE b2(a INTEGER PRIMARY KEY, b, c UNIQUE);
  INSERT INTO b2 VALUES(1, '1234567890', 1);
  INSERT INTO b2 VALUES(2, '1234567890', 2);
  INSERT INTO b2 VALUES(3, '1234567890', 3);
  INSERT INTO b2 VALUES(4, '1234567890', 4);
  INSERT INTO b2 VALUES(5, '1234567890', 5);
  INSERT INTO b2 VALUES(6, '1234567890', 6);

DELETE FROM b1 WHERE a = 1 
DELETE FROM b1 WHERE a = 2 
UPDATE b1 SET c = 42 WHERE a=4 
UPDATE b1 SET c = 43 WHERE a=3 
INSERT OR REPLACE INTO b1 VALUES(10, 'abcdefghij', 5) 
INSERT OR REPLACE INTO b1 VALUES(11, 'abcdefghij', 6) 
DELETE FROM b2 WHERE a = 1 
DELETE FROM b2 WHERE a = 2 
UPDATE b2 SET c = 42 WHERE a=4 
UPDATE b2 SET c = 43 WHERE a=3 
INSERT OR REPLACE INTO b2 VALUES(10, 'abcdefghij', 5) 
INSERT OR REPLACE INTO b2 VALUES(11, 'abcdefghij', 6) 
CREATE TABLE b3(x INTEGER PRIMARY KEY, y TEXT, z INTEGER);
  INSERT INTO b3 VALUES(22, '..........', NULL);

UPDATE b3 SET z = 'not null';

SELECT * FROM b3;

SELECT * FROM b3;

CREATE TABLE c2(i INTEGER PRIMARY KEY, j);
  INSERT INTO c2 VALUES(10, zeroblob(24));

SELECT j FROM c2 