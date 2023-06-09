
PRAGMA integrity_check

UPDATE t1 SET y=1
PRAGMA integrity_check

UPDATE t1 SET y=1

UPDATE t2 SET y='abcdef-uvwxyz'

BEGIN; UPDATE t2 SET y='abcdef-uvwxyz'; ROLLBACK;
PRAGMA integrity_check

BEGIN; UPDATE t2 SET y='abcdef-uvwxyz'; ROLLBACK;

BEGIN; UPDATE t2 SET y='abcdef-uvwxyz'; ROLLBACK;

BEGIN; DELETE FROM t1 WHERE x>13; ROLLBACK;

BEGIN; DELETE FROM t1 WHERE x>13; ROLLBACK;

BEGIN; UPDATE t2 SET y='abcdef-uvwxyz'; ROLLBACK;

BEGIN; CREATE TABLE t3 AS SELECT x,3 as y FROM t2 WHERE rowid%5!=0; ROLLBACK;

SELECT count(*) FROM sqlite_master;

BEGIN; CREATE TABLE t3 AS SELECT x,3 as y FROM t2 WHERE rowid%5!=0; ROLLBACK;

 INSERT INTO t1 VALUES (1, $blob) 
DELETE FROM t1 WHERE rowid = (SELECT max(rowid) FROM t1)

SELECT count(*) FROM sqlite_master;
