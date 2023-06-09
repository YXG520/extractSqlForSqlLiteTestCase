
SELECT b, d FROM t1 CROSS JOIN t2 ON (c=a)

    lappend r $b $d
    db eval {UPDATE t2 SET d=d+1

SELECT d FROM t2 ORDER BY d
