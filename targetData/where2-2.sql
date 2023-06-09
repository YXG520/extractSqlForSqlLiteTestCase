
S

S

S


    CREATE TABLE x1(a INTEGER PRIMARY KEY, b DEFAULT 1);
    WITH RECURSIVE
       cnt(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM cnt WHERE x<50)
    INSERT INTO x1 SELECT x, 1 FROM cnt;
    CREATE TABLE x2(x INTEGER PRIMARY KEY);
    INSERT INTO x2 VALUES(1);
  
SELECT * FROM x1, x2 WHERE x=1 ORDER BY random()


  -- random() is not optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY random();



  -- random() is not optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY random();



  -- other constant functions are optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY abs(5);



  -- other constant functions are optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY abs(5);

