
DELETE FROM t1 ORDER BY x

DELETE FROM t1 WHERE x=1 ORDER BY x

UPDATE t1 SET y=1 WHERE x=1 ORDER BY x

DELETE FROM t1 AS a WHERE a.x=1

UPDATE t1 AS a SET y=1 WHERE x=1

UPDATE t1 AS a SET y=1 WHERE t1.x=1

DELETE FROM t1 WHERE x=1 OFFSET 2

UPDATE t1 SET y=1 WHERE x=1 OFFSET 2
 DROP TABLE t1 