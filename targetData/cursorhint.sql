CREATE TABLE t1(a,b,c,d);
  CREATE TABLE t2(x,y,z);
  INSERT INTO t1(a,b) VALUES(10, 15);
  INSERT INTO t1(a,b) VALUES(20, 25);
  INSERT INTO t2(x,y) VALUES('ten', 'fifteen');
  INSERT INTO t2(x,y) VALUES('twenty', 'twentyfive');
  CREATE TABLE t3(id TEXT PRIMARY KEY, a, b, c, d) WITHOUT ROWID;
  INSERT INTO t3(id,a,b,c,d) SELECT rowid, a, b, c, d FROM t1;
  PRAGMA automatic_index = 0;

set res {
if {$x(opcode)==$opcode
set res {
if {$x(opcode)==$opcode
CREATE TABLE t1(x TEXT PRIMARY KEY) WITHOUT ROWID;
  CREATE VIEW t2 AS SELECT 0 FROM t1 WHERE x>='a' OR x='1';
  SELECT * FROM t2 RIGHT JOIN t1 ON true;

CREATE TABLE  v1 (c1, PRIMARY KEY( c1 )) WITHOUT ROWID;
  CREATE VIEW   v2 AS SELECT 0 FROM v1 WHERE c1 IS '' OR c1 > '';
  CREATE VIEW   v3 AS SELECT 0 FROM v2 JOIN (v2 RIGHT JOIN v1);
  CREATE VIEW   v4 AS SELECT 0 FROM v3, v3;
  SELECT * FROM v3 JOIN v3 AS a0, v4 AS a1, v4 AS a2, v3 AS a3,
                v3 AS a4, v4 AS a5
    ORDER BY 1;

CREATE TABLE t6(a TEXT UNIQUE, b TEXT);
  INSERT INTO t6(a,b) VALUES('uvw','xyz'),('abc','def');
  WITH v1(a) AS (SELECT a COLLATE NOCASE FROM t6)
  SELECT v1.a, count(*) FROM t6 LEFT JOIN v1 ON true
   GROUP BY 1
  HAVING (SELECT true FROM t6 AS aa LEFT JOIN t6 AS bb ON length(v1.a)>5);

CREATE TABLE t1(a INT PRIMARY KEY) WITHOUT ROWID;
  CREATE TABLE t2(b INT PRIMARY KEY) WITHOUT ROWID;
  CREATE TABLE t3(c INT PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t1(a) VALUES(1),(2);
  INSERT INTO t2(b) VALUES(4),(8);
  INSERT INTO t3(c) VALUES(16),(32);
  CREATE VIEW v4(d) AS SELECT c FROM t3;
  SELECT * FROM t1 RIGHT JOIN t2 ON true JOIN v4 ON (d IS NULL);

