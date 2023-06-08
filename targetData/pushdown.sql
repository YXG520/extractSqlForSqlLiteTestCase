CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 'b1', 'c1');
  INSERT INTO t1 VALUES(2, 'b2', 'c2');
  INSERT INTO t1 VALUES(3, 'b3', 'c3');
  INSERT INTO t1 VALUES(4, 'b4', 'c4');
  CREATE INDEX i1 ON t1(a, c);

SELECT * FROM t1 WHERE a=2 AND f(b) AND f(c) 
SELECT * FROM t1 WHERE a=3 AND f(c) AND f(b) 
DROP INDEX i1;
  CREATE INDEX i1 ON t1(a, b);

SELECT * FROM t1 WHERE a=2 AND f(b) AND f(c) 
SELECT * FROM t1 WHERE a=3 AND f(c) AND f(b) 
CREATE TABLE u1(a, b, c);
  CREATE TABLE u2(x, y, z);

  INSERT INTO u1 VALUES('a1', 'b1', 'c1');
  INSERT INTO u2 VALUES('a1', 'b1', 'c1');

SELECT * FROM u1 WHERE f('one')=123 AND 123=(
      SELECT x FROM u2 WHERE x=a AND f('two')
    )
  
SELECT * FROM u1 WHERE 123=(
      SELECT x FROM u2 WHERE x=a AND f('two')
    ) AND f('three')=123
  
CREATE TABLE t0(c0 INT);
  INSERT INTO t0 VALUES(0);
  CREATE TABLE t1_a(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1_a VALUES(1,'one');
  CREATE TABLE t1_b(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t1_b VALUES(2,'two');
  CREATE VIEW v0 AS SELECT CAST(t0.c0 AS INTEGER) AS c0 FROM t0;
  CREATE VIEW v1(a,b) AS SELECT a, b FROM t1_a UNION ALL SELECT c, 0 FROM t1_b;
  SELECT v1.a, quote(v1.b), t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0,v1;

SELECT a, quote(b), cd FROM (
    SELECT v1.a, v1.b, t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0, v1
  ) WHERE a=2 AND b='0' AND cd=0;

SELECT a, quote(b), cd FROM (
    SELECT v1.a, v1.b, t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0, v1
  ) WHERE a=1 AND b='one' AND cd=0;

SELECT a, quote(b), cd FROM (
    SELECT v1.a, v1.b, t0.c0 AS cd FROM t0 LEFT JOIN v0 ON v0.c0!=0, v1
  ) WHERE a=2 AND b=0 AND cd=0;

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INT, b INT, c TEXT, PRIMARY KEY(a,b)) WITHOUT ROWID;
  INSERT INTO t1(a,b,c) VALUES
    (1,100,'abc'),
    (2,200,'def'),
    (3,300,'abc');
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INT, b INT, c TEXT, PRIMARY KEY(a,b)) WITHOUT ROWID;
  INSERT INTO t2(a,b,c) VALUES
    (1,110,'efg'),
    (2,200,'hij'),
    (3,330,'klm');
  CREATE VIEW v3 AS
    SELECT a, b, c FROM t1
    UNION ALL
    SELECT a, b, 'xyz' FROM t2;
  SELECT * FROM v3 WHERE a=2 AND b=200;

SELECT count(*) FROM v3;

CREATE TABLE t1(a INT);
  CREATE TABLE t2(b INT);
  CREATE TABLE t3(c INT);
  INSERT INTO t3(c) VALUES(3);
  CREATE TABLE t4(d INT);
  CREATE TABLE t5(e INT);
  INSERT INTO t5(e) VALUES(5);
  CREATE VIEW v6(f,g) AS SELECT d, e FROM t4 RIGHT JOIN t5 ON true;
  SELECT * FROM  t1 JOIN t2 ON false RIGHT JOIN t3 ON true CROSS JOIN v6;

SELECT * FROM v6 JOIN t5 ON false RIGHT JOIN t3 ON true;

SELECT * FROM t1 JOIN t2 ON false JOIN v6 ON true RIGHT JOIN t3 ON true;

CREATE TABLE t1(a INT);  INSERT INTO t1 VALUES(1);
  CREATE TABLE t2(b INT);  INSERT INTO t2 VALUES(2);
  CREATE TABLE t3(c INT);  INSERT INTO t3 VALUES(3);
  CREATE TABLE t4(d INT);  INSERT INTO t4 VALUES(4);
  CREATE TABLE t5(e INT);  INSERT INTO t5 VALUES(5);
  SELECT *
    FROM t1 JOIN t2 ON null RIGHT JOIN t3 ON true
          LEFT JOIN (t4 JOIN t5 ON d+1=e) ON d=4
   WHERE e>0;
