
CREATE TABLE tbl2(f1 int, f2 int, f3 int); BEGIN;
INSERT INTO tbl2 VALUES($i,$i2,$i3)
COMMIT
DROP TABLE tbl2

CREATE TABLE tbl2(f1 int, f2 int, f3 int); BEGIN;
INSERT INTO tbl2 VALUES($i,$i2,$i3)
COMMIT


SELECT count(*) FROM tbl2

SELECT count(*) FROM tbl2 WHERE f2>1000
