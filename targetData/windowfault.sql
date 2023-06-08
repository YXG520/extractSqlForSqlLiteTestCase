CREATE TABLE t1(a, b, c, d);
  INSERT INTO t1 VALUES(1, 2, 3, 4);
  INSERT INTO t1 VALUES(5, 6, 7, 8);
  INSERT INTO t1 VALUES(9, 10, 11, 12);

SELECT row_number() OVER win,
           rank() OVER win,
           dense_rank() OVER win,
           ntile(2) OVER win,
           first_value(d) OVER win,
           last_value(d) OVER win,
           nth_value(d,2) OVER win,
           lead(d) OVER win,
           lag(d) OVER win,
           max(d) OVER win,
           min(d) OVER win
    FROM t1
    WINDOW win AS (ORDER BY a)
  
SELECT row_number() OVER win,
           rank() OVER win,
           dense_rank() OVER win
    FROM t1
    WINDOW win AS (PARTITION BY c<7 ORDER BY a)
  
SELECT ntile(105) 
    OVER ( RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) 
    FROM t1
  
SELECT round(percent_rank() OVER win, 2),
           round(cume_dist() OVER win, 2)
    FROM t1
    WINDOW win AS (ORDER BY a)
  
SELECT min(d) OVER win, max(d) OVER win
    FROM t1
    WINDOW win AS (ORDER BY a RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
  
CREATE VIEW aaa AS
    SELECT min(d) OVER w, max(d) OVER w
    FROM t1
    WINDOW w AS (ORDER BY a RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING);
    SELECT * FROM aaa;
  
SELECT last_value(a) OVER win1,
           last_value(a) OVER win2
    FROM t1
    WINDOW win1 AS (ORDER BY a ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING),
           win2 AS (ORDER BY a)
  
SELECT percent_rank() OVER (), cume_dist() OVER () FROM t1
  
SELECT percent_rank() OVER (), cume_dist() OVER () FROM t1
  
SELECT a, sum(b) OVER win1 FROM t1
      WINDOW win1 AS (PARTITION BY a ),
             win2 AS (PARTITION BY b )
    ORDER BY a;
  
PRAGMA page_size = 512;
  PRAGMA cache_size = 2;
  CREATE TABLE t(x INTEGER PRIMARY KEY, y TEXT);
  WITH s(i) AS (
    VALUES(1) UNION ALL SELECT i+1 FROM s WHERE i<1900
  )
  INSERT INTO t(y) SELECT $big FROM s;

SELECT sum(y) OVER win FROM t
    WINDOW win AS (
      ORDER BY x ROWS BETWEEN UNBOUNDED PRECEDING AND 1800 FOLLOWING
    )
  
CREATE TABLE t1(a, b, c, d);
  CREATE TABLE t2(a, b, c, d);

SELECT row_number() OVER win
    FROM t1
    WINDOW win AS (
      ORDER BY (
        SELECT percent_rank() OVER win2 FROM t2
        WINDOW win2 AS (ORDER BY a)
      )
    )
  
DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0 INTEGER UNIQUE);
  INSERT INTO t0 VALUES(0);

SELECT * FROM t0 WHERE 
      (0, t0.c0) IN (SELECT DENSE_RANK() OVER(), LAG(0) OVER() FROM t0);
  
VALUES(false),(current_date collate binary) 
    intersect 
    values(count() not like group_concat(cast(cast(0e00 as text) as integer) <= NULL || 0.4e-0 || 0x8 & true ) over () collate rtrim);
  
CREATE TABLE t1(a, b, c);

WITH v(a, b, row_number) AS (
      SELECT a, b, row_number() OVER (PARTITION BY a COLLATE nocase ORDER BY b) FROM t1
    )
    SELECT * FROM v WHERE a=2
  
CREATE TABLE t1(id INTEGER PRIMARY KEY, a, b);
  INSERT INTO t1 VALUES(1, '1', 'a');
  INSERT INTO t1 VALUES(2, '22', 'b');
  INSERT INTO t1 VALUES(3, '333', 'c');
  INSERT INTO t1 VALUES(4, '4444', 'dddd');
  INSERT INTO t1 VALUES(5, '55555', 'e');
  INSERT INTO t1 VALUES(6, '666666', 'f');
  INSERT INTO t1 VALUES(7, '7777777', 'gggggggggg');

SELECT group_concat(a, b) OVER (
    ORDER BY id RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) FROM t1

SELECT group_concat(a, b) OVER (
        ORDER BY id RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING
    ) FROM t1
  
