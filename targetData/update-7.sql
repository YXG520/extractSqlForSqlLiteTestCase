
CREATE INDEX idx2 ON test1(f2)
CREATE INDEX idx3 ON test1(f1,f2)
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f2=f2+1 WHERE f1==8
SELECT * FROM test1 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==8 ORDER BY f1,f2

SELECT * FROM test1 WHERE f2==89 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==88 ORDER BY f1,f2

UPDATE test1 SET f2=f2-1 WHERE f1==8 and f2>800
SELECT * FROM test1 ORDER BY f1,f2

UPDATE test1 SET f2=f2-1 WHERE f1==8 and f2<800
SELECT * FROM test1 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==8 ORDER BY f1,f2

SELECT * FROM test1 WHERE f2==89 ORDER BY f1,f2

SELECT * FROM test1 WHERE f2==88 ORDER BY f1,f2

UPDATE test1 SET f1=f1+1 WHERE f2==128
SELECT * FROM test1 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==78 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==778 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==8 ORDER BY f1,f2

UPDATE test1 SET f1=f1-1 WHERE f1>100 and f2==128
SELECT * FROM test1 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==78 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==778 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==777 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==8 ORDER BY f1,f2

UPDATE test1 SET f1=f1-1 WHERE f1<=100 and f2==128
SELECT * FROM test1 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==77 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==778 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==777 ORDER BY f1,f2

SELECT * FROM test1 WHERE f1==8 ORDER BY f1,f2
