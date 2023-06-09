

    CREATE TABLE t6(a, ['a'], ["a"], "[a]", [`a`]);
    INSERT INTO t6 VALUES(1,2,3,4,5);
  
SELECT * FROM t6

[a]



SELECT `'a'`, ```a```, `[a]`, `a`, `"a"` FROM t6

SELECT a, max(a) AS m FROM t6

SELECT `a`, max(a) AS m FROM t6

a

SELECT [a], max(a) AS m FROM t6

SELECT t6.a, max(a) AS m FROM t6

SELECT ['a'], max(['a']) AS m FROM t6

SELECT ["a"], max(["a"]) AS m FROM t6

[a]

`a`
