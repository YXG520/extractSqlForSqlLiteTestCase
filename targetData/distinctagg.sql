CREATE TABLE t1(a,b,c);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 VALUES(1,3,4);
    INSERT INTO t1 VALUES(1,3,5);
    SELECT count(distinct a),
           count(distinct b),
           count(distinct c),
           count(all a) FROM t1;
  
SELECT b, count(distinct c) FROM t1 GROUP BY b
  
INSERT INTO t1 SELECT a+1, b+3, c+5 FROM t1;
    INSERT INTO t1 SELECT a+2, b+6, c+10 FROM t1;
    INSERT INTO t1 SELECT a+4, b+12, c+20 FROM t1;
    SELECT count(*), count(distinct a), count(distinct b) FROM t1
  
SELECT a, count(distinct c) FROM t1 GROUP BY a ORDER BY a
  
SELECT count(distinct) FROM t1;
  
SELECT group_concat(distinct a,b) FROM t1;
  
CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);

  INSERT INTO t1 VALUES (1, 1, 1);
  INSERT INTO t1 VALUES (2, 2, 2);
  INSERT INTO t1 VALUES (3, 3, 3);
  INSERT INTO t1 VALUES (4, 1, 4);
  INSERT INTO t1 VALUES (5, 2, 1);
  INSERT INTO t1 VALUES (5, 3, 2);
  INSERT INTO t1 VALUES (4, 1, 3);
  INSERT INTO t1 VALUES (3, 2, 4);
  INSERT INTO t1 VALUES (2, 3, 1);
  INSERT INTO t1 VALUES (1, 1, 2);

  INSERT INTO t2 VALUES('a', 'a', 'a');
  INSERT INTO t2 VALUES('b', 'b', 'b');
  INSERT INTO t2 VALUES('c', 'c', 'c');

  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1bc ON t1(b, c);

1  0  "SELECT count(DISTINCT a) FROM t1"                5
  2  0  "SELECT count(DISTINCT b) FROM t1"                3
  3  1  "SELECT count(DISTINCT c) FROM t1"                4
  4  0  "SELECT count(DISTINCT c) FROM t1 WHERE b=3"      3
  5  0  "SELECT count(DISTINCT rowid) FROM t1"           10
  6  0  "SELECT count(DISTINCT a) FROM t1, t2"            5
  7  0  "SELECT count(DISTINCT a) FROM t2, t1"            5
  8  1  "SELECT count(DISTINCT a+b) FROM t1, t2, t2, t2"  6
  9  0  "SELECT count(DISTINCT c) FROM t1 WHERE c=2"      1
 10  1  "SELECT count(DISTINCT t1.rowid) FROM t1, t2"    10

SELECT a, count(DISTINCT b) FROM t1 GROUP BY a;

CREATE TABLE t1(a, b, c);
  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1bc ON t1(b, c);

  INSERT INTO t1 VALUES(1, 'A', 1);
  INSERT INTO t1 VALUES(1, 'A', 1);
  INSERT INTO t1 VALUES(2, 'A', 2);
  INSERT INTO t1 VALUES(2, 'A', 2);
  INSERT INTO t1 VALUES(1, 'B', 1);
  INSERT INTO t1 VALUES(2, 'B', 2);
  INSERT INTO t1 VALUES(3, 'B', 3);
  INSERT INTO t1 VALUES(NULL, 'B', NULL);
  INSERT INTO t1 VALUES(NULL, 'C', NULL);
  INSERT INTO t1 VALUES('d', 'D', 'd');

  CREATE TABLE t2(d, e, f);
  CREATE INDEX t2def ON t2(d, e, f);

  INSERT INTO t2 VALUES(1, 1, 'a');
  INSERT INTO t2 VALUES(1, 1, 'a');
  INSERT INTO t2 VALUES(1, 2, 'a');
  INSERT INTO t2 VALUES(1, 2, 'a');
  INSERT INTO t2 VALUES(1, 2, 'b');
  INSERT INTO t2 VALUES(1, 3, 'b');
  INSERT INTO t2 VALUES(1, 3, 'a');
  INSERT INTO t2 VALUES(1, 3, 'b');
  INSERT INTO t2 VALUES(2, 3, 'x');
  INSERT INTO t2 VALUES(2, 3, 'y');
  INSERT INTO t2 VALUES(2, 3, 'z');

  CREATE TABLE t3(x, y, z);
  INSERT INTO t3 VALUES(1,1,1);
  INSERT INTO t3 VALUES(2,2,2);

1 0  "SELECT count(DISTINCT c) FROM t1 GROUP BY b"   {2 3 0 1
1 1 "SELECT count(*) FROM t3"   2
  2 0 "SELECT count(*) FROM t1"   10
  2 1 "SELECT count(DISTINCT a) FROM t1, t3" 4
  3 1 "SELECT count(DISTINCT a) FROM t1 LEFT JOIN t3" 4
  4 1 "SELECT count(DISTINCT a) FROM t1 LEFT JOIN t3 WHERE t3.x=1" 4
  5 1 "SELECT count(DISTINCT a) FROM t1 LEFT JOIN t3 WHERE t3.x=0" 0
  6 1 "SELECT count(DISTINCT a) FROM t1 LEFT JOIN t3 ON (t3.x=0)"  4
  7 1 "SELECT count(DISTINCT x) FROM t1 LEFT JOIN t3" 2
  8 1 "SELECT count(DISTINCT x) FROM t1 LEFT JOIN t3 WHERE t3.x=1" 1
  9 1 "SELECT count(DISTINCT x) FROM t1 LEFT JOIN t3 WHERE t3.x=0" 0
 10 1 "SELECT count(DISTINCT x) FROM t1 LEFT JOIN t3 ON (t3.x=0)"  0


if {$a(opcode)=="OpenRead" && $a(p2)==$t3root
CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  INSERT INTO t1 VALUES(123,456);
  INSERT INTO t2 VALUES(123,456);

SELECT count(DISTINCT c) FROM t1 LEFT JOIN t2;

CREATE TABLE v1 ( v2 UNIQUE, v3 AS( TYPEOF ( NULL ) ) UNIQUE ); 
  SELECT COUNT ( DISTINCT TRUE ) FROM v1 GROUP BY likelihood ( v3 , 0.100000 );

