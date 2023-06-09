
SELECT substr(t1,1,2) FROM tbl1 ORDER BY t1

SELECT substr(t1,2,1) FROM tbl1 ORDER BY t1

SELECT substr(t1,3,3) FROM tbl1 ORDER BY t1

SELECT substr(t1,-1,1) FROM tbl1 ORDER BY t1

SELECT substr(t1,-1,2) FROM tbl1 ORDER BY t1

SELECT substr(t1,-2,1) FROM tbl1 ORDER BY t1

SELECT substr(t1,-2,2) FROM tbl1 ORDER BY t1

SELECT substr(t1,-4,2) FROM tbl1 ORDER BY t1

SELECT t1 FROM tbl1 ORDER BY substr(t1,2,20)

SELECT substr(a,1,1) FROM t2

SELECT substr(a,2,2) FROM t2
