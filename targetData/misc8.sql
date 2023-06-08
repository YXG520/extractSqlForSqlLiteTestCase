CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3),(4,5,6);
  SELECT quote(eval('SELECT * FROM t1 ORDER BY a','-abc-'));

SELECT quote(eval('SELECT * FROM t1 ORDER BY a'));

SELECT quote(eval('SELECT d FROM t1 ORDER BY a'));

INSERT INTO t1 VALUES(7,null,9);
  SELECT eval('SELECT * FROM t1 ORDER BY a',',');

BEGIN;
  INSERT INTO t1 VALUES(10,11,12);
  SELECT a, coalesce(b, eval('ROLLBACK; SELECT ''bam'';')), c
   FROM t1 ORDER BY a;

INSERT INTO t1 VALUES(10,11,12);
  SELECT a, coalesce(b, eval('SELECT ''bam''')), c
    FROM t1
   ORDER BY rowid;

SELECT a, coalesce(b, eval('DELETE FROM t1; SELECT ''bam''')), c
    FROM t1
   ORDER BY rowid;

INSERT INTO t1 VALUES(1,2,3),(4,5,6),(7,null,9);
  BEGIN;
  CREATE TABLE t2(x);
  SELECT a, coalesce(b, eval('ROLLBACK; SELECT ''bam''')), c
    FROM t1
   ORDER BY rowid;

PRAGMA empty_result_callbacks = 1;
  SELECT eval('SELECT * FROM t1 WHERE 1 = 0;');

db eval $sql 
CREATE TABLE t1(a INTEGER PRIMARY KEY, b INTEGER) WITHOUT ROWID;
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d INTEGER, x BLOB);
  INSERT INTO t1 VALUES(0,0);
  INSERT INTO t1 VALUES(10,10);
  INSERT INTO t2 VALUES(1,1,zeroblob(200));
  INSERT INTO t2 VALUES(2,2,zeroblob(200));
  INSERT INTO t2 VALUES(3,3,zeroblob(200));
  INSERT INTO t2 VALUES(4,4,zeroblob(200));
  INSERT INTO t2 VALUES(5,5,zeroblob(200));
  INSERT INTO t2 VALUES(6,6,zeroblob(200));
  INSERT INTO t2 VALUES(7,7,zeroblob(200));
  INSERT INTO t2 VALUES(8,8,zeroblob(200));
  INSERT INTO t2 VALUES(9,9,zeroblob(200));
  INSERT INTO t2 VALUES(10,10,zeroblob(200));
  SELECT a, c, eval(
      printf('DELETE FROM t2 WHERE c=%d AND %d>5', a+c, a+c)
  ) FROM t1, t2;

SELECT *
    FROM
         (
           (SELECT 0 AS i) AS x1,
           (SELECT 1) AS x2
         ) AS x3,
         (SELECT 6 AS j UNION ALL SELECT 7) AS x4
   WHERE i<rowid
   ORDER BY 1;

CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3);
  ATTACH 'test2.db' AS aux2;
  CREATE TABLE aux2.t2(c,d,e);
  INSERT INTO t2 VALUES(4,5,6);
  SELECT * FROM t1, t2;

PRAGMA database_list;

SELECT name FROM icecube.sqlite_master;

