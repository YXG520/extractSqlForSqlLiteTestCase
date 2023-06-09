
CREATE TABLE test1(f1 int,f2 int)
INSERT INTO test1 VALUES($i,[expr {1<<$i}])
SELECT * FROM test1 ORDER BY f1

UPDATE test1 SET f1=f3*2 WHERE f2==32

UPDATE test1 SET f1=test2.f1*2 WHERE f2==32

UPDATE test1 SET f3=f1*2 WHERE f2==32

UPDATE test1 SET f2=f2*3


SELECT count(*) FROM test1


SELECT * FROM test1 ORDER BY f1

PRAGMA count_changes=on
UPDATE test1 SET f2=f2/3 WHERE f1<=5

SELECT * FROM test1 ORDER BY f1

UPDATE test1 SET f2=f2/3 WHERE f1>5

SELECT * FROM test1 ORDER BY f1

UPDATE test1 SET F2=f1, F1=f2

SELECT * FROM test1 ORDER BY F1

PRAGMA count_changes=off
UPDATE test1 SET F2=f1, F1=f2

SELECT * FROM test1 ORDER BY F1
