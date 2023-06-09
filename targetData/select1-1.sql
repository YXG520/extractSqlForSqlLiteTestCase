
SELECT * FROM test1
CREATE TABLE test1(f1 int, f2 int)

SELECT * FROM test1, test2

SELECT * FROM test2, test1
INSERT INTO test1(f1,f2) VALUES(11,22)

SELECT f1 FROM test1

SELECT f2 FROM test1

SELECT f2, f1 FROM test1

SELECT f1, f2 FROM test1

SELECT * FROM test1

SELECT *, * FROM test1

SELECT *, min(f1,f2), max(f1,f2) FROM test1

SELECT 'one', *, 'two', * FROM test1
CREATE TABLE test2(r1 real, r2 real)
INSERT INTO test2(r1,r2) VALUES(1.1,2.2)

SELECT * FROM test1, test2

SELECT *, 'hi' FROM test1, test2

SELECT 'one', *, 'two', * FROM test1, test2

SELECT test1.f1, test2.r1 FROM test1, test2

SELECT test1.f1, test2.r1 FROM test2, test1

SELECT * FROM test2, test1

SELECT * FROM test1 AS a, test1 AS b

SELECT max(test1.f1,test2.r1), min(test1.f2,test2.r2)
           FROM test2, test1

SELECT min(test1.f1,test2.r1), max(test1.f2,test2.r2)
           FROM test1, test2
