
SELECT f1 FROM tbl2 WHERE 1000=f2

CREATE INDEX idx1 ON tbl2(f2)

SELECT f1 FROM tbl2 WHERE 1000=f2

SELECT f1 FROM tbl2 WHERE f2=1000

SELECT * FROM tbl2 WHERE 1000=f2

SELECT * FROM tbl2 WHERE f2=1000

DROP INDEX idx1
SELECT f1 FROM tbl2 WHERE f2==2000
