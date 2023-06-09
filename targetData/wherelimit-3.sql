
SELECT count(*) FROM t1

UPDATE t1 SET y=1 WHERE x=1
SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=1 WHERE x=1 RETURNING x, y, '|' LIMIT 5

SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=2 WHERE x=2 ORDER BY x LIMIT 5
SELECT count(*) FROM t1 WHERE y=2

UPDATE t1 SET y=2 WHERE x=2 ORDER BY x LIMIT 5 OFFSET 2
SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=2 WHERE x=2 ORDER BY x LIMIT 5 OFFSET -2
SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=3 WHERE x=3 ORDER BY x LIMIT 2, -5
SELECT count(*) FROM t1 WHERE y=3

UPDATE t1 SET y=3 WHERE x=3 ORDER BY x LIMIT -2, 5
SELECT count(*) FROM t1 WHERE y=3

UPDATE t1 SET y=4 WHERE x=4 ORDER BY x LIMIT -2, -5
SELECT count(*) FROM t1 WHERE y=4

UPDATE t1 SET y=4 WHERE x=5 ORDER BY x LIMIT 2, 5
SELECT count(*) FROM t1 WHERE y=4

UPDATE t1 SET y=4 WHERE x=6 ORDER BY x LIMIT 5 OFFSET 5
SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=1 WHERE x=1 ORDER BY x LIMIT 50 OFFSET 30
SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=1 WHERE x=2 ORDER BY x LIMIT 30, 50
SELECT count(*) FROM t1 WHERE y=1

UPDATE t1 SET y=1 WHERE x=3 ORDER BY x LIMIT 50 OFFSET 50
SELECT count(*) FROM t1 WHERE y=1
