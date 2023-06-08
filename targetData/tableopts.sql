CREATE TABLE t1(a,b) WITHOUT rowid;
  
CREATE TABLE t1(a INTEGER PRIMARY KEY AUTOINCREMENT,b) WITHOUT rowid;
  
CREATE TABLE t1(a,b) WITHOUT unknown2;
  
CREATE TABLE t1(a, b, c, PRIMARY KEY(a,b)) WITHOUT rowid;
  INSERT INTO t1 VALUES(1,2,3),(2,3,4);
  SELECT c FROM t1 WHERE a IN (1,2) ORDER BY b;

SELECT rowid, * FROM t1;
  
SELECT _rowid_, * FROM t1;
  
SELECT oid, * FROM t1;
  
VACUUM;
  SELECT c FROM t1 WHERE a IN (1,2) ORDER BY b;

CREATE TABLE without(x INTEGER PRIMARY KEY, without TEXT);
  INSERT INTO without VALUES(1, 'xyzzy'), (2, 'fizzle');
  SELECT * FROM without WHERE without='xyzzy';

