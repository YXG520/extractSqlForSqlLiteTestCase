
BEGIN EXCLUSIVE TRANSACTION
SELECT * FROM t1

INSERT INTO t1 VALUES(3)

END TRANSACTION
