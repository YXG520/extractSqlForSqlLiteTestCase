SELECT * FROM tabc;
  
SELECT Tabc.a, tAbc.b, taBc.c, * FROM tabc
  
SELECT +tabc.a, -tabc.b, tabc.c, * FROM tabc
  
SELECT +tabc.a AS AAA, -tabc.b AS BBB, tabc.c CCC, * FROM tabc
  
SELECT tabc.a, txyz.x, * FROM tabc, txyz;
  
SELECT tabc.a, txyz.x, tabc.*, txyz.* FROM tabc, txyz;
  
SELECT tabc.a, txyz.x, tboth.a, tboth.x, * FROM tabc, txyz, tboth;
  
SELECT * FROM v1 ORDER BY 2;
  
SELECT * FROM v2 ORDER BY 2;
  
SELECT * FROM tabc;
  
SELECT Tabc.a, tAbc.b, taBc.c FROM tabc
  
SELECT +tabc.a, -tabc.b, tabc.c FROM tabc
  
SELECT +tabc.a AS AAA, -tabc.b AS BBB, tabc.c CCC FROM tabc
  
SELECT Tabc.a, Txyz.x, * FROM tabc, txyz;
  
SELECT tabc.*, txyz.* FROM tabc, txyz;
  
SELECT * FROM tabc, txyz, tboth;
  
SELECT v1.a, * FROM v1 ORDER BY 2;
  
SELECT * FROM v2 ORDER BY 2;
  
SELECT * FROM v3 ORDER BY 2;
  
SELECT * FROM v4 ORDER BY 2;
  
SELECT * FROM tabc;
  
SELECT Tabc.a, tAbc.b, taBc.c FROM tabc
  
SELECT +tabc.a, -tabc.b, tabc.c FROM tabc
  
SELECT +tabc.a AS AAA, -tabc.b AS BBB, tabc.c CCC FROM tabc
  
SELECT Tabc.a, Txyz.x, * FROM tabc, txyz;
  
SELECT tabc.*, txyz.* FROM tabc, txyz;
  
SELECT * FROM tabc, txyz, tboth;
  
SELECT * FROM v1 ORDER BY 2;
  
SELECT * FROM v2 ORDER BY 2;
  
SELECT * FROM v3 ORDER BY 2;
  
SELECT * FROM v4 ORDER BY 2;
  
SELECT * FROM v5 ORDER BY 2;
  
SELECT * FROM v6 ORDER BY 2;
  
SELECT * FROM t6
SELECT ['a'], [`a`], "[a]", [a], ["a"] FROM t6
SELECT "'a'", "`a`", "[a]", "a", """a""" FROM t6
SELECT `'a'`, ```a```, `[a]`, `a`, `"a"` FROM t6
SELECT a, max(a) AS m FROM t6
SELECT `a`, max(a) AS m FROM t6
SELECT "a", max(a) AS m FROM t6
SELECT [a], max(a) AS m FROM t6
SELECT t6.a, max(a) AS m FROM t6
SELECT ['a'], max(['a']) AS m FROM t6
SELECT ["a"], max(["a"]) AS m FROM t6
SELECT "[a]", max("[a]") AS m FROM t6
SELECT "`a`", max([`a`]) AS m FROM t6
SELECT rowid, * FROM t7
SELECT v1.x, (Y) FROM v1
SELECT * FROM v1
SELECT * FROM v2 WHERE 1
SELECT v2.x, [v2].[y] FROM v2 WHERE 1
SELECT +x, +y FROM v2 WHERE 1
SELECT t1.a, v3.a AS n FROM t1 LEFT JOIN v3
SELECT t1.a AS n, v3.a FROM t1 JOIN v3
SELECT t1.a, v3.a AS n FROM t1 JOIN v3
DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(aaa INT);
  INSERT INTO t1(aaa) VALUES(123);

SELECT BBb FROM (SELECT aaa AS Bbb FROM t1)
CREATE TABLE t2 AS SELECT BBb FROM (SELECT aaa AS Bbb FROM t1);
    SELECT name FROM pragma_table_info('t2');
  
-- added 2019-08-10 to invalidate
  DROP TABLE IF EXISTS t1;      -- a couple assert()s that were
  CREATE TABLE t1(a);           -- added by ticket 3b44500725
  INSERT INTO t1 VALUES(17),(2),(99),(-3),(7);
  SELECT (SELECT avg(a) UNION SELECT min(a) OVER()) FROM t1;

CREATE TABLE t4 AS SELECT #0;

CREATE TABLE t5 AS SELECT RAISE(abort,a);

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1("with space" TEXT);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2 AS SELECT "with space" FROM t1;
  PRAGMA table_info(t2);

DROP TABLE IF EXISTS t3;
  CREATE TABLE t3 AS SELECT "with space" FROM t1 GROUP BY 1;
  PRAGMA table_info(t3);

