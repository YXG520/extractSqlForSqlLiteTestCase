

    CREATE TABLE t13(x);
    INSERT INTO t13 VALUES(1),(2);
    CREATE VIEW v13a AS SELECT x AS y FROM t13;
    CREATE VIEW v13b AS SELECT y AS z FROM v13a UNION ALL SELECT y+10 FROM v13a;
    CREATE VIEW v13c AS SELECT z FROM v13b UNION ALL SELECT z+20 FROM v13b;
  

SELECT z FROM v13c LIMIT 1

SELECT z FROM v13c LIMIT 2

SELECT z FROM v13c LIMIT 3

SELECT z FROM v13c LIMIT 4

SELECT z FROM v13c LIMIT 5

SELECT z FROM v13c LIMIT 6

SELECT z FROM v13c LIMIT 7

SELECT z FROM v13c LIMIT 8

SELECT z FROM v13c LIMIT 9

SELECT z FROM v13c LIMIT 1 OFFSET 1

SELECT z FROM v13c LIMIT 2 OFFSET 1

SELECT z FROM v13c LIMIT 3 OFFSET 1

SELECT z FROM v13c LIMIT 4 OFFSET 1

SELECT z FROM v13c LIMIT 5 OFFSET 1

SELECT z FROM v13c LIMIT 6 OFFSET 1

SELECT z FROM v13c LIMIT 7 OFFSET 1

SELECT z FROM v13c LIMIT 8 OFFSET 1

SELECT z FROM v13c LIMIT 1 OFFSET 2

SELECT z FROM v13c LIMIT 2 OFFSET 2

SELECT z FROM v13c LIMIT 3 OFFSET 2

SELECT z FROM v13c LIMIT 4 OFFSET 2

SELECT z FROM v13c LIMIT 5 OFFSET 2

SELECT z FROM v13c LIMIT 6 OFFSET 2

SELECT z FROM v13c LIMIT 7 OFFSET 2

SELECT z FROM v13c LIMIT 1 OFFSET 3

SELECT z FROM v13c LIMIT 2 OFFSET 3

SELECT z FROM v13c LIMIT 3 OFFSET 3

SELECT z FROM v13c LIMIT 4 OFFSET 3

SELECT z FROM v13c LIMIT 5 OFFSET 3

SELECT z FROM v13c LIMIT 6 OFFSET 3

SELECT z FROM v13c LIMIT 1 OFFSET 4

SELECT z FROM v13c LIMIT 2 OFFSET 4

SELECT z FROM v13c LIMIT 3 OFFSET 4

SELECT z FROM v13c LIMIT 4 OFFSET 4

SELECT z FROM v13c LIMIT 5 OFFSET 4

SELECT z FROM v13c LIMIT 1 OFFSET 5

SELECT z FROM v13c LIMIT 2 OFFSET 5

SELECT z FROM v13c LIMIT 3 OFFSET 5

SELECT z FROM v13c LIMIT 4 OFFSET 5

SELECT z FROM v13c LIMIT 1 OFFSET 6

SELECT z FROM v13c LIMIT 2 OFFSET 6

SELECT z FROM v13c LIMIT 3 OFFSET 6

SELECT z FROM v13c LIMIT 1 OFFSET 7

SELECT z FROM v13c LIMIT 2 OFFSET 7

SELECT z FROM v13c LIMIT 1 OFFSET 8