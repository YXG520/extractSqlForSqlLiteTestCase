
SELECT count(*) FROM sqlite_master

SELECT count(*) FROM t1

SELECT count(*) FROM t1 WHERE x>'abcdef'

SELECT count(*) FROM t2

CREATE TABLE t3 AS SELECT * FROM t1

DROP TABLE t1

PRAGMA integrity_check

