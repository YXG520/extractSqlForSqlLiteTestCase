CREATE TABLE t1(x);
  CREATE INDEX t1x ON t1(x, x=0);

SELECT * FROM sqlite_schema 
SELECT * FROM t1 AS a1 WHERE (
      SELECT count(x AND 0=a1.x) FROM t1 GROUP BY abs(1)
    ) AND x=(
      SELECT * FROM t1 AS a1 
      WHERE (SELECT count(x IS 1 AND a1.x=0) 
      FROM t1 
      GROUP BY abs(1)) AND x=0
    );
  
