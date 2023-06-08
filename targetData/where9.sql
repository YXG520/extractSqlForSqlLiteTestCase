set r [db eval $sql]
  lappend r scan [db status step] sort [db status sort]

SELECT a FROM t1 INDEXED BY t1b
     WHERE +b>1000
       AND (c=31031 OR d IS NULL)
     ORDER BY +a
  
SELECT a FROM t1 INDEXED BY t1c
     WHERE b>1000
       AND (c=31031 OR d IS NULL)
     ORDER BY +a
  
SELECT a FROM t1 INDEXED BY t1d
     WHERE b>1000
       AND (c=31031 OR d IS NULL)
     ORDER BY +a
  
DELETE FROM t1 INDEXED BY t1b
     WHERE (+b IS NULL AND c NOT NULL AND d NOT NULL)
        OR (b NOT NULL AND c IS NULL AND d NOT NULL)
        OR (b NOT NULL AND c NOT NULL AND d IS NULL)
  
UPDATE t1 INDEXED BY t1b SET a=a+100
     WHERE (+b IS NULL AND c NOT NULL AND d NOT NULL)
        OR (b NOT NULL AND c IS NULL AND d NOT NULL)
        OR (b NOT NULL AND c NOT NULL AND d IS NULL)
  
UPDATE t1 INDEXED BY t1b SET a=a+100
       WHERE (b IS NULL AND c NOT NULL AND d NOT NULL)
          OR (b NOT NULL AND c IS NULL AND d NOT NULL)
          OR (b NOT NULL AND c NOT NULL AND d IS NULL)
    
DELETE FROM t1 INDEXED BY t1b
       WHERE (b IS NULL AND c NOT NULL AND d NOT NULL)
          OR (b NOT NULL AND c IS NULL AND d NOT NULL)
          OR (b NOT NULL AND c NOT NULL AND d IS NULL)
    
UPDATE t1 INDEXED BY t1b SET a=a+100
       WHERE (b IS NULL AND c NOT NULL AND d NOT NULL)
          OR (b NOT NULL AND c IS NULL AND d NOT NULL)
          OR (b NOT NULL AND c NOT NULL AND d IS NULL)
    
DELETE FROM t1 INDEXED BY t1b
       WHERE (b IS NULL AND c NOT NULL AND d NOT NULL)
          OR (b NOT NULL AND c IS NULL AND d NOT NULL)
          OR (b NOT NULL AND c NOT NULL AND d IS NULL)
    
CREATE TABLE t5(a, b, c, d, e, f, g, x, y);
    INSERT INTO t5
     SELECT a, b, c, e, d, f, g,
            CASE WHEN (a&1)!=0 THEN 'y' ELSE 'n' END,
            CASE WHEN (a&2)!=0 THEN 'y' ELSE 'n' END
       FROM t1;
    CREATE INDEX t5xb ON t5(x, b);
    CREATE INDEX t5xc ON t5(x, c);
    CREATE INDEX t5xd ON t5(x, d);
    CREATE INDEX t5xe ON t5(x, e);
    CREATE INDEX t5xf ON t5(x, f);
    CREATE INDEX t5xg ON t5(x, g);
    CREATE INDEX t5yb ON t5(y, b);
    CREATE INDEX t5yc ON t5(y, c);
    CREATE INDEX t5yd ON t5(y, d);
    CREATE INDEX t5ye ON t5(y, e);
    CREATE INDEX t5yf ON t5(y, f);
    CREATE INDEX t5yg ON t5(y, g);
    CREATE TABLE t6(a, b, c, e, d, f, g, x, y);
    INSERT INTO t6 SELECT * FROM t5;
    ANALYZE t5;
  
SELECT a FROM t6 WHERE x='y' AND (b=913 OR c=27027) ORDER BY a;
  
SELECT a FROM t6 WHERE x='n' AND (b=913 OR c=27027) ORDER BY a;
  
SELECT a FROM t6 WHERE (x='y' OR y='y') AND b=913 ORDER BY a;
  
SELECT a FROM t6 WHERE (x='y' OR y='y') AND c=27027 ORDER BY a;
  
CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  CREATE TABLE t2_a(k INTEGER PRIMARY KEY, v TEXT);
  CREATE TABLE t2_b(k INTEGER PRIMARY KEY, v TEXT);
  CREATE VIEW t2 AS SELECT * FROM t2_a UNION ALL SELECT * FROM t2_b;
  SELECT 1 FROM t1 JOIN t1 USING(a)
   WHERE (a=1)
      OR (a=2 AND (SELECT 4 FROM t2,(SELECT 5 FROM t1 ORDER BY a) WHERE a));

