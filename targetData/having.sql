CREATE TABLE t2(c, d);

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 1);
  INSERT INTO t1 VALUES(2, 2);
  INSERT INTO t1 VALUES(1, 3);
  INSERT INTO t1 VALUES(2, 4);
  INSERT INTO t1 VALUES(1, 5);
  INSERT INTO t1 VALUES(2, 6);

1 "SELECT a, sum(b) FROM t1 GROUP BY a HAVING a=2" {2 12
set r1 [list]
  set r2 [list]
  db eval "explain $sql1" { lappend r1 $opcode $p1 $p2 $p3 $p4 $p5
lappend r2 $opcode $p1 $p2 $p3 $p4 $p5
uplevel [list do_test $tn [list compare_vdbe $sql1 $sql2] $res]

1 "SELECT a, sum(b) FROM t1 GROUP BY a HAVING a=2"
    "SELECT a, sum(b) FROM t1 WHERE a=2 GROUP BY a"

  2 "SELECT a, sum(b) FROM t1 GROUP BY a HAVING sum(b)>5 AND a=2"
    "SELECT a, sum(b) FROM t1 WHERE a=2 GROUP BY a HAVING sum(b)>5"

  3 "SELECT a, sum(b) FROM t1 GROUP BY a COLLATE binary HAVING a=2"
    "SELECT a, sum(b) FROM t1 WHERE a=2 GROUP BY a COLLATE binary"

  5 "SELECT a, sum(b) FROM t1 GROUP BY a COLLATE binary HAVING 1"
    "SELECT a, sum(b) FROM t1 WHERE 1 GROUP BY a COLLATE binary"

  6 "SELECT count(*) FROM t1,t2 WHERE a=c GROUP BY b, d HAVING b=d"
    "SELECT count(*) FROM t1,t2 WHERE a=c AND b=d GROUP BY b, d"

  7 {
      SELECT count(*) FROM t1,t2 WHERE a=c GROUP BY b, d 
      HAVING b=d COLLATE nocase
    
SELECT x,y FROM (
    SELECT a AS x, sum(b) AS y FROM t1 
    GROUP BY a
  ) WHERE x BETWEEN 2 AND 9999

SELECT x,y FROM (
    SELECT a AS x, sum(b) AS y FROM t1 
    WHERE x BETWEEN 2 AND 9999 
    GROUP BY a
  )

1 "SELECT a, sum(b) FROM t1 GROUP BY a COLLATE nocase HAVING a=2"
    "SELECT a, sum(b) FROM t1 WHERE a=2 GROUP BY a COLLATE nocase"

  2 "SELECT a, sum(b) FROM t1 GROUP BY a HAVING randomblob(a)<X'88'"
    "SELECT a, sum(b) FROM t1 WHERE randomblob(a)<X'88' GROUP BY a"

CREATE TABLE t3(a, b);
  INSERT INTO t3 VALUES(1, 1);
  INSERT INTO t3 VALUES(1, 2);
  INSERT INTO t3 VALUES(1, 3);
  INSERT INTO t3 VALUES(2, 1);
  INSERT INTO t3 VALUES(2, 2);
  INSERT INTO t3 VALUES(2, 3);

SELECT a, sum(b) FROM t3 GROUP BY a HAVING nondeter(a)

SELECT a, sum(b) FROM t3 WHERE nondeter(a) GROUP BY a

CREATE TABLE t1(a, b);
  CREATE TABLE t2(x, y);
  INSERT INTO t1 VALUES('a', 'b');

SELECT min(b), (
    SELECT x FROM t2 WHERE a=2 GROUP BY y HAVING 0
  ) FROM t1;

SELECT EXISTS (
    SELECT * FROM (
      SELECT * FROM (
        SELECT 1
      ) WHERE Col0 = 1   GROUP BY 1
    )   WHERE 0
  )
  FROM (SELECT 1 Col0)   GROUP BY 1

