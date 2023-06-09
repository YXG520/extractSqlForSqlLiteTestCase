
SELECT length(t1) FROM tbl1 ORDER BY t1

SELECT length(*) FROM tbl1 ORDER BY t1

SELECT length(t1,5) FROM tbl1 ORDER BY t1

SELECT length(t1), count(*) FROM tbl1 GROUP BY length(t1)
           ORDER BY length(t1)

SELECT coalesce(length(a),-1) FROM t2
