
BEGIN
UPDATE t1 SET a=0 WHERE 0
SELECT count(*) FROM t1

COMMIT
SELECT count(*) FROM t1
