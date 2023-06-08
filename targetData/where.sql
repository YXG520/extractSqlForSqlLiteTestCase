CREATE TABLE t1(w int, x int, y int);
    CREATE TABLE t2(p int, q int, r int, s int);
  
INSERT INTO t2 SELECT 101-w, x, (SELECT max(y) FROM t1)+1-y, y FROM t1;
    
select max(y) from t1
CREATE INDEX i1w ON t1("w");  -- Verify quoted identifier names
    CREATE INDEX i1xy ON t1(`x`,'y' ASC); -- Old MySQL compatibility
    CREATE INDEX i2p ON t2(p);
    CREATE INDEX i2r ON t2(r);
    CREATE INDEX i2qs ON t2(q, s);
  
set ::sqlite_search_count 0
  return [concat [execsql $sql] $::sqlite_search_count]

SELECT 99 WHERE 0
  
SELECT 99 WHERE 1
  
SELECT 99 WHERE 0.1
  
SELECT 99 WHERE 0.0
  
SELECT count(*) FROM t1 WHERE t1.w
  
set data [execsql $sql]
  if {[db status sort]
CREATE TABLE t3(a,b,c);
    CREATE INDEX t3a ON t3(a);
    CREATE INDEX t3bc ON t3(b,c);
    CREATE INDEX t3acb ON t3(a,c,b);
    INSERT INTO t3 SELECT w, 101-w, y FROM t1;
    SELECT count(*), sum(a), sum(b), sum(c) FROM t3;
    ANALYZE;
  
CREATE TABLE t4 AS SELECT * FROM t1;
    CREATE INDEX i4xy ON t4(x,y);
  
DELETE FROM t4;
  
CREATE TABLE t5(x PRIMARY KEY);
    SELECT * FROM t5 WHERE x<10;
  
SELECT * FROM t5 WHERE x<10 ORDER BY x DESC;
  
SELECT * FROM t5 WHERE x=10;
  
SELECT 1 WHERE abs(random())<0
  
SELECT count(*) FROM t1 WHERE tclvar('v1');
  
SELECT count(*) FROM t1 WHERE tclvar('v1');
  
SELECT count(*) FROM t1 WHERE tclvar('v1');
  
CREATE TABLE t99(Dte INT, X INT);
   DELETE FROM t99 WHERE (Dte = 2451337) OR (Dte = 2451339) OR
     (Dte BETWEEN 2451345 AND 2451347) OR (Dte = 2451351) OR 
     (Dte BETWEEN 2451355 AND 2451356) OR (Dte = 2451358) OR
     (Dte = 2451362) OR (Dte = 2451365) OR (Dte = 2451367) OR
     (Dte BETWEEN 2451372 AND 2451376) OR (Dte BETWEEN 2451382 AND 2451384) OR
     (Dte = 2451387) OR (Dte BETWEEN 2451389 AND 2451391) OR 
     (Dte BETWEEN 2451393 AND 2451395) OR (Dte = 2451400) OR 
     (Dte = 2451402) OR (Dte = 2451404) OR (Dte BETWEEN 2451416 AND 2451418) OR 
     (Dte = 2451422) OR (Dte = 2451426) OR (Dte BETWEEN 2451445 AND 2451446) OR
     (Dte = 2451456) OR (Dte = 2451458) OR (Dte BETWEEN 2451465 AND 2451467) OR
     (Dte BETWEEN 2451469 AND 2451471) OR (Dte = 2451474) OR
     (Dte BETWEEN 2451477 AND 2451501) OR (Dte BETWEEN 2451503 AND 2451509) OR
     (Dte BETWEEN 2451511 AND 2451514) OR (Dte BETWEEN 2451518 AND 2451521) OR
     (Dte BETWEEN 2451523 AND 2451531) OR (Dte BETWEEN 2451533 AND 2451537) OR
     (Dte BETWEEN 2451539 AND 2451544) OR (Dte BETWEEN 2451546 AND 2451551) OR
     (Dte BETWEEN 2451553 AND 2451555) OR (Dte = 2451557) OR
     (Dte BETWEEN 2451559 AND 2451561) OR (Dte = 2451563) OR
     (Dte BETWEEN 2451565 AND 2451566) OR (Dte BETWEEN 2451569 AND 2451571) OR 
     (Dte = 2451573) OR (Dte = 2451575) OR (Dte = 2451577) OR (Dte = 2451581) OR
     (Dte BETWEEN 2451583 AND 2451586) OR (Dte BETWEEN 2451588 AND 2451592) OR 
     (Dte BETWEEN 2451596 AND 2451598) OR (Dte = 2451600) OR
     (Dte BETWEEN 2451602 AND 2451603) OR (Dte = 2451606) OR (Dte = 2451611);
  
CREATE TABLE t6(a INTEGER PRIMARY KEY, b TEXT);
    INSERT INTO t6 VALUES(1,'one');
    INSERT INTO t6 VALUES(4,'four');
    CREATE INDEX t6i1 ON t6(b);
  
CREATE TABLE t7(a INTEGER PRIMARY KEY, b TEXT);
    INSERT INTO t7 VALUES(1,'one');
    INSERT INTO t7 VALUES(4,'four');
    CREATE INDEX t7i1 ON t7(b);
  
CREATE TABLE t8(a INTEGER PRIMARY KEY, b TEXT UNIQUE, c CHAR(100));
    INSERT INTO t8(a,b) VALUES(1,'one');
    INSERT INTO t8(a,b) VALUES(4,'four');
  
CREATE TEMP TABLE t1 (a, b, c, d, e);
    CREATE TEMP TABLE t2 (f);
    SELECT t1.e AS alias FROM t2, t1 WHERE alias = 1 ;
  
CREATE TABLE a1(id INTEGER PRIMARY KEY, v);
    CREATE TABLE a2(id INTEGER PRIMARY KEY, v);
    INSERT INTO a1 VALUES(1, 'one');
    INSERT INTO a1 VALUES(2, 'two');
    INSERT INTO a2 VALUES(1, 'one');
    INSERT INTO a2 VALUES(2, 'two');
  
SELECT * FROM a2 CROSS JOIN a1 WHERE a1.id=1 AND a1.v='one';
  
CREATE TEMP TABLE foo(idx INTEGER);
    INSERT INTO foo VALUES(1);
    INSERT INTO foo VALUES(1);
    INSERT INTO foo VALUES(1);
    INSERT INTO foo VALUES(2);
    INSERT INTO foo VALUES(2);
    CREATE TEMP TABLE bar(stuff INTEGER);
    INSERT INTO bar VALUES(100);
    INSERT INTO bar VALUES(200);
    INSERT INTO bar VALUES(300);
  
SELECT bar.RowID id FROM foo, bar WHERE foo.idx = bar.RowID AND id = 2;
  
CREATE TABLE tbooking (
      id INTEGER PRIMARY KEY,
      eventtype INTEGER NOT NULL
    );
    INSERT INTO tbooking VALUES(42, 3);
    INSERT INTO tbooking VALUES(43, 4);
  
SELECT a.id
    FROM tbooking AS a
    WHERE a.eventtype=3;
  
SELECT a.id, (SELECT b.id FROM tbooking AS b WHERE b.id>a.id)
    FROM tbooking AS a
    WHERE a.eventtype=3;
  
SELECT a.id, (SELECT b.id FROM tbooking AS b WHERE b.id>a.id)
    FROM (SELECT 1.5 AS id) AS a
  
CREATE TABLE tother(a, b);
    INSERT INTO tother VALUES(1, 3.7);
    SELECT id, a FROM tbooking, tother WHERE id>a;
  
CREATE TABLE t181(a);
  CREATE TABLE t182(b,c);
  INSERT INTO t181 VALUES(1);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY c IS NULL;

SELECT DISTINCT a FROM t182 RIGHT JOIN t181 ON a=b ORDER BY c IS NULL;

SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY +c;

SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY c;

SELECT DISTINCT a FROM t182 RIGHT JOIN t181 ON a=b ORDER BY c;

INSERT INTO t181 VALUES(1),(1),(1),(1);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY +c;

SELECT DISTINCT a FROM t182 RIGHT JOIN t181 ON a=b ORDER BY +c;

INSERT INTO t181 VALUES(2);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY c IS NULL, +a;

INSERT INTO t181 VALUES(2);
  SELECT DISTINCT a FROM t181 LEFT JOIN t182 ON a=b ORDER BY +a, +c IS NULL;

CREATE TABLE t191(a INT UNIQUE NOT NULL, b INT UNIQUE NOT NULL,c,d);
  CREATE INDEX t191a ON t1(a);
  CREATE INDEX t191b ON t1(b);
  CREATE TABLE t192(x INTEGER PRIMARY KEY,y INT, z INT);

  EXPLAIN QUERY PLAN
  SELECT t191.rowid FROM t192, t191 WHERE (a=y OR b=y) AND x=?1;

CREATE TABLE t201(x);
  CREATE TABLE t202(y, z);
  INSERT INTO t201 VALUES('key');
  INSERT INTO t202 VALUES('key', -1);
  CREATE INDEX t202i ON t202(y, ifnull(z, 0));
  SELECT count(*) FROM t201 LEFT JOIN t202 ON (x=y) WHERE ifnull(z, 0) >=0;

CREATE TABLE t12(a, b, c);
  CREATE TABLE t13(x);
  CREATE INDEX t12ab ON t12(b, a);
  CREATE INDEX t12ac ON t12(c, a);

  INSERT INTO t12 VALUES(4, 0, 1);
  INSERT INTO t12 VALUES(4, 1, 0);
  INSERT INTO t12 VALUES(5, 0, 1);
  INSERT INTO t12 VALUES(5, 1, 0);

  INSERT INTO t13 VALUES(1), (2), (3), (4);

SELECT * FROM t12 WHERE 
  a = (SELECT * FROM (SELECT count(*) FROM t13 LIMIT 5) ORDER BY 1 LIMIT 10) 
  AND (b=1 OR c=1);

CREATE TABLE t1(a INT);
  CREATE INDEX t1a ON t1(a);
  INSERT INTO t1(a) VALUES(NULL),(NULL),(42),(NULL),(NULL);
  CREATE TABLE t2(dummy INT);
  SELECT count(*) FROM t1 LEFT JOIN t2 ON a IS NOT NULL;

DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY);
  INSERT INTO t1(a) VALUES(1),(2),(3);
  CREATE TABLE t2(x INTEGER PRIMARY KEY, y INT);
  INSERT INTO t2(y) VALUES(2),(3);
  SELECT * FROM t1, t2 WHERE a=y AND y=3;

CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  INSERT INTO t1 VALUES(3, 'three');
  INSERT INTO t1 VALUES(4, 'four');

1 "SELECT b FROM t1"                   {one two three four
CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  CREATE UNIQUE INDEX i1 ON t1(c);
  INSERT INTO t1 VALUES(1, 'one', 'i');
  INSERT INTO t1 VALUES(2, 'two', 'ii');

  CREATE TABLE t2(a INTEGER PRIMARY KEY, b, c);
  CREATE UNIQUE INDEX i2 ON t2(c);
  INSERT INTO t2 VALUES(1, 'one', 'i');
  INSERT INTO t2 VALUES(2, 'two', 'ii');
  INSERT INTO t2 VALUES(3, 'three', 'iii');

  PRAGMA writable_schema = 1;
  UPDATE sqlite_schema SET rootpage = (
    SELECT rootpage FROM sqlite_schema WHERE name = 'i2'
  ) WHERE name = 'i1';

DELETE FROM t1 WHERE c='iii'

INSERT INTO t1 VALUES(4, 'four', 'iii') 
    ON CONFLICT(c) DO UPDATE SET b=NULL

CREATE TABLE t1(a PRIMARY KEY, b, c) WITHOUT ROWID;
  CREATE UNIQUE INDEX i1 ON t1(c);
  INSERT INTO t1 VALUES(1, 'one', 'i');
  INSERT INTO t1 VALUES(2, 'two', 'ii');

  CREATE TABLE t2(a INTEGER PRIMARY KEY, b, c);
  CREATE UNIQUE INDEX i2 ON t2(c);
  INSERT INTO t2 VALUES(1, 'one', 'i');
  INSERT INTO t2 VALUES(2, 'two', 'ii');
  INSERT INTO t2 VALUES(3, 'three', 'iii');

  PRAGMA writable_schema = 1;
  UPDATE sqlite_schema SET rootpage = (
    SELECT rootpage FROM sqlite_schema WHERE name = 'i2'
  ) WHERE name = 'i1';

SELECT * FROM t1 WHERE c='iii'

INSERT INTO t1 VALUES(4, 'four', 'iii') 
    ON CONFLICT(c) DO UPDATE SET b=NULL

CREATE TABLE t0(c0 INTEGER PRIMARY KEY, c1 TEXT);
  INSERT INTO t0(c0, c1) VALUES (1, 'a');
  CREATE TABLE t1(c0 INT PRIMARY KEY, c1 TEXT);
  INSERT INTO t1(c0, c1) VALUES (1, 'a');
  SELECT * FROM t0 WHERE '-1' BETWEEN 0 AND t0.c0;

SELECT * FROM t1 WHERE '-1' BETWEEN 0 AND t1.c0;

SELECT * FROM t0 WHERE '-1'>=0 AND '-1'<=t0.c0;

SELECT * FROM t1 WHERE '-1'>=0 AND '-1'<=t1.c0;

SELECT '-1' BETWEEN 0 AND t0.c0 FROM t0;

SELECT '-1' BETWEEN 0 AND t1.c0 FROM t1;

SELECT '-1'>=0 AND '-1'<=t0.c0 FROM t0;

SELECT '-1'>=0 AND '-1'<=t1.c0 FROM t1;

CREATE TABLE t1(a INTEGER PRIMARY KEY);
    INSERT INTO t1(a) VALUES(9223372036854775807);
    SELECT 1 FROM t1 WHERE a>=(9223372036854775807+1);
  
SELECT a>=9223372036854775807+1 FROM t1;
  
CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT);
  CREATE INDEX t1b ON t1(b,b,b,b,b,b,b,b,b,b,b,b,b);
  INSERT INTO t1(a,b) VALUES(1,1),(15,2),(19,5);
  UPDATE t1 SET b=999 WHERE a IN (SELECT 15) AND b IN (1,2);
  SELECT * FROM t1;

SELECT DISTINCT 'xyz' FROM pragma_cache_size
      WHERE rowid OR abs(0)
      ORDER BY
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      1, 1, 1, 1;
  