SELECT int2hex(0), int2hex(100), int2hex(255)

CREATE TABLE t1(i, h);
  CREATE INDEX i1 ON t1(h);
  WITH data(a, b) AS (
    SELECT 1, int2hex(1)
      UNION ALL
    SELECT a+1, int2hex(a+1) FROM data WHERE a<40
  )
  INSERT INTO t1 SELECT * FROM data;

SELECT i FROM t1 WHERE (i%2)==0 
SELECT i FROM t1 WHERE (i%2)==0 ORDER BY h 
BEGIN; DELETE FROM t1 WHERE (i%2)
    
ROLLBACK 
lappend res1 [sqlite3_column_text $::s1 0]
    
lappend res2 [sqlite3_column_text $::s2 0]
    
ROLLBACK 
# Also Ok.
    
