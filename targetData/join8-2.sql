

  CREATE TABLE t1(a int, b int, c int);
  INSERT INTO t1 VALUES(1,2,3),(4,5,6);
  CREATE TABLE t2(d int, e int);
  INSERT INTO t2 VALUES(3,333),(4,444);
  CREATE TABLE t3(f int, g int);
  PRAGMA automatic_index=off;



  SELECT * FROM t1 RIGHT JOIN t2 ON c=d JOIN t3 ON f=e;



  CREATE TABLE t1(x TEXT);
  INSERT INTO t1(x) VALUES('aaa');
  CREATE VIEW v0(y) AS SELECT x FROM t1;
  CREATE TABLE t2(z TEXT);



  SELECT * FROM t2 JOIN v0 ON z<>'bbb' RIGHT JOIN t1 ON z<>'ccc';



  SELECT * FROM t2 JOIN v0 ON z<>'bbb' RIGHT JOIN t1 ON z<>'ccc' ORDER BY z;



  SELECT 99 as "m" FROM t2 JOIN v0 ON z<>'bbb' RIGHT JOIN t1 ON z<>'ccc';



  SELECT 99 as "m" FROM t2 JOIN v0 ON z<>'bbb' RIGHT JOIN t1 ON z<>'ccc' ORDER BY z;



  SELECT count(*)
    FROM (SELECT 99 as "m" FROM t2 JOIN v0 ON z<>'' RIGHT JOIN t1 ON z<>'') AS "t3";



  SELECT count(*) 
    FROM (SELECT 99 as "m" FROM t2 JOIN v0 ON z<>'' RIGHT JOIN t1 ON z<>'' ORDER BY z) AS "t3";



  CREATE TABLE t1(a INT,b BOOLEAN);
  CREATE TABLE t2(c INT);  INSERT INTO t2 VALUES(NULL);
  CREATE TABLE t3(d INT);



  SELECT (b IS TRUE) FROM t1 JOIN t3 ON (b=TRUE) RIGHT JOIN t2 ON TRUE;



  SELECT * FROM t1 JOIN t3 ON (b=TRUE) RIGHT JOIN t2 ON TRUE WHERE (b IS TRUE);



  DROP TABLE t1;
  DROP TABLE t2;
  DROP TABLE t3;
  CREATE TABLE t1(a INT);
  CREATE TABLE t2(b INT);
  CREATE TABLE t3(c INTEGER PRIMARY KEY, d INT);
  CREATE INDEX t3d ON t3(d);
  INSERT INTO t3 VALUES(0, 0);



  SELECT * FROM t1 JOIN t2 ON d>b RIGHT JOIN t3 ON true WHERE +d = 0;



  SELECT * FROM t1 JOIN t2 ON d>b RIGHT JOIN t3 ON true WHERE d = 0;



  CREATE TABLE t1(a INT);
  CREATE TABLE t2(b INT);
  CREATE TABLE t3(c TEXT);  INSERT INTO t3 VALUES('x');
  CREATE TABLE t4(d TEXT);  INSERT INTO t4 VALUES('y');
  SELECT 99
    FROM t1
         LEFT JOIN t2 ON true
         RIGHT JOIN t3 ON true
         RIGHT JOIN t4 ON true
   WHERE a=b;



  CREATE TABLE t1(a TEXT);
  INSERT INTO t1 VALUES('c');
  CREATE TABLE t2(b TEXT, c TEXT NOT NULL);
  INSERT INTO t2 VALUES('a', 'b');
  CREATE TABLE t3(d TEXT);
  INSERT INTO t3 VALUES('x');
  CREATE TABLE t4(e TEXT);
  INSERT INTO t4 VALUES('y');



  SELECT *
    FROM t1
         LEFT JOIN t2 ON TRUE
         JOIN t3 ON c=''
         RIGHT JOIN t4 ON b='';



  SELECT *
    FROM t1
         LEFT JOIN t2 ON TRUE
         JOIN t3 ON c=''
         RIGHT JOIN t4 ON b=''
   WHERE d ISNULL



  CREATE TABLE t4(b INT, c INT);
  CREATE TABLE t5(a INT, f INT);
  INSERT INTO t5 VALUES(1,2);
  WITH t7(x, y) AS (SELECT 100, 200 FROM t5)
    SELECT * FROM t4 JOIN t7 ON true RIGHT JOIN (SELECT y AS z FROM t7) AS t6 ON (x=z);



  CREATE TABLE t1(a1 INT);
  CREATE TABLE t2(b2 INT);
  CREATE TABLE t3(c3 INT, d3 INT UNIQUE);
  CREATE TABLE t4(e4 INT, f4 TEXT);
  INSERT INTO t3(c3, d3) VALUES (2, 1);
  INSERT INTO t4(f4) VALUES ('x');
  CREATE INDEX i0 ON t3(c3) WHERE d3 ISNULL;
  ANALYZE main;



  SELECT * FROM t1 LEFT JOIN t2 ON true JOIN t3 ON (b2 IN (a1)) FULL JOIN t4 ON true;



  SELECT 1 FROM t1 LEFT JOIN t2 ON true JOIN t3 ON (b2 IN (a1)) FULL JOIN t4 ON true;



  CREATE TABLE t1(a INT);
  CREATE TABLE t2(b INT, c INT);
  CREATE VIEW t3(d) AS SELECT NULL FROM t2 FULL OUTER JOIN t1 ON c=a UNION ALL SELECT b FROM t2;
  INSERT INTO t1(a) VALUES (NULL);
  INSERT INTO t2(b, c) VALUES (99, NULL);
  SELECT DISTINCT b, c, d FROM t2, t3 WHERE b<>0
   UNION SELECT DISTINCT b, c, d FROM t2, t3 WHERE b ISNULL;

