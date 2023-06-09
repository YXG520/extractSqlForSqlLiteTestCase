
SELECT DISTINCT y FROM t1 ORDER BY y

SELECT y, count(*) FROM t1 GROUP BY y ORDER BY y

SELECT y, count(*) FROM t1 GROUP BY y ORDER BY count(*), y

SELECT count(*), y FROM t1 GROUP BY y ORDER BY count(*), y
