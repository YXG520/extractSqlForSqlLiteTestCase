
SELECT count(*) FROM t1

SELECT count(*) FROM t1 LIMIT  5

SELECT x FROM t1 ORDER BY x LIMIT 5

SELECT x FROM t1 ORDER BY x LIMIT 5 OFFSET 2

SELECT x FROM t1 ORDER BY x+1 LIMIT 5 OFFSET -2

SELECT x FROM t1 ORDER BY x+1 LIMIT 2, -5

SELECT x FROM t1 ORDER BY x+1 LIMIT -2, 5

SELECT x FROM t1 ORDER BY x+1 LIMIT -2, -5

SELECT x FROM t1 ORDER BY x LIMIT 2, 5

SELECT x FROM t1 ORDER BY x LIMIT 5 OFFSET 5

SELECT x FROM t1 ORDER BY x LIMIT 50 OFFSET 30

SELECT x FROM t1 ORDER BY x LIMIT 30, 50

SELECT x FROM t1 ORDER BY x LIMIT 50 OFFSET 50

SELECT * FROM t1 AS a, t1 AS b ORDER BY a.x, b.x LIMIT 5

SELECT * FROM t1 AS a, t1 AS b ORDER BY a.x, b.x LIMIT 5 OFFSET 32