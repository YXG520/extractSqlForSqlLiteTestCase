CREATE TABLE fruits(
     name TEXT COLLATE NOCASE,
     color TEXT COLLATE NOCASE
  );

INSERT INTO fruits (name, color) VALUES ('apple', 'RED');
  INSERT INTO fruits (name, color) VALUES ('APPLE', 'yellow');
  INSERT INTO fruits (name, color) VALUES ('pear', 'YELLOW');
  INSERT INTO fruits (name, color) VALUES ('PEAR', 'green');

SELECT name, color, dense_rank() OVER (ORDER BY name) FROM fruits;

SELECT name, color,
    dense_rank() OVER (PARTITION BY name ORDER BY color)
  FROM fruits;

SELECT name, color,
    dense_rank() OVER (ORDER BY name),
    dense_rank() OVER (PARTITION BY name ORDER BY color)
  FROM fruits;

SELECT name, color,
    dense_rank() OVER (ORDER BY name),
    dense_rank() OVER (PARTITION BY name ORDER BY color)
  FROM fruits ORDER BY color;

CREATE TABLE t1(a BLOB, b INTEGER, c COLLATE nocase);
  INSERT INTO t1 VALUES(1, 2, 'abc');
  INSERT INTO t1 VALUES(3, 4, 'ABC');

SELECT c=='Abc' FROM t1

SELECT c=='Abc', rank() OVER (ORDER BY b) FROM t1

SELECT b=='2' FROM t1

SELECT b=='2', rank() OVER (ORDER BY a) FROM t1

CREATE TABLE t1(a);
  CREATE TABLE t2(a,b,c);

SELECT EXISTS(SELECT 1 FROM t1 ORDER BY sum(a) OVER ()) FROM t1;

SELECT sum(a) OVER () FROM t2
   ORDER BY EXISTS(SELECT 1 FROM t2 ORDER BY sum(a) OVER ());

SELECT a, sum(a) OVER (ORDER BY a DESC) FROM t2 
  ORDER BY EXISTS(
    SELECT 1 FROM t2 ORDER BY sum(a) OVER (ORDER BY a)
  ) OVER (ORDER BY a);

SELECT y, y+1, y+2 FROM (
      SELECT c IN (
        SELECT min(a) OVER (),
        (abs(row_number() OVER())+22)/19,
        max(a) OVER () FROM t1
        ) AS y FROM t2
      );

CREATE TABLE t1(a, b TEXT);
  INSERT INTO t1 VALUES('A', 1), ('A', 2), ('2', 1), ('2', 2);

SELECT b, b=count(*), '1,2'                   FROM t1 GROUP BY b;

SELECT b, b=count(*), group_concat(b) OVER () FROM t1 GROUP BY b;

CREATE TABLE t1(a, b, c, d, e);
  CREATE INDEX i1 ON t1(a, b, c, d, e);

1 {
    SELECT 
      sum(e) OVER (),
      sum(e) OVER (ORDER BY a),
      sum(e) OVER (PARTITION BY a ORDER BY b),
      sum(e) OVER (PARTITION BY a, b ORDER BY c),
      sum(e) OVER (PARTITION BY a, b, c ORDER BY d)
    FROM t1;
  
CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (0);

SELECT * FROM t0 WHERE 
  EXISTS (
    SELECT MIN(c0) OVER (), CUME_DIST() OVER () FROM t0
  ) >=1 AND 
  EXISTS (
    SELECT MIN(c0) OVER (), CUME_DIST() OVER () FROM t0
  ) <=1;

SELECT * FROM t0 WHERE EXISTS (
    SELECT MIN(c0) OVER (), CUME_DIST() OVER () FROM t0
  ) 
  BETWEEN 1 AND 1;

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(10, 1);
  INSERT INTO t1 VALUES(20, 2);
  INSERT INTO t1 VALUES(3, 3);
  INSERT INTO t1 VALUES(2, 4);
  INSERT INTO t1 VALUES(1, 5);

SELECT avg(x) OVER (ORDER BY y) AS z FROM t1 ORDER BY z

SELECT avg(x) OVER (ORDER BY y) z FROM t1 ORDER BY (z IS y);

SELECT avg(x) OVER (ORDER BY y) z FROM t1 ORDER BY (y IS z);

SELECT avg(x) OVER (ORDER BY y) z FROM t1 ORDER BY z + 0.0;

CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2), (3, 4);
  SELECT min( sum(a) ) OVER () FROM t1;

SELECT min( sum(a) ) OVER () FROM t1 GROUP BY a;

CREATE VIEW v1 AS 
    SELECT 0 AS x
      UNION 
    SELECT count() OVER() FROM (SELECT 0) 
    ORDER BY 1
  ;

SELECT min( max((SELECT x FROM v1)) ) OVER()

SELECT(
      SELECT x UNION 
      SELECT sum( avg((SELECT x FROM v1)) ) OVER()
  )
  FROM v1;

CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(NULL,'bb',356);
  INSERT INTO t1 VALUES('CB','aa',158);
  INSERT INTO t1 VALUES('BB','aa',399);
  INSERT INTO t1 VALUES('FF','bb',938);

SELECT sum(c) OVER (
    ORDER BY c RANGE BETWEEN 0 PRECEDING AND '-700' PRECEDING
  )
  FROM t1

