

    CREATE TABLE t5(x,y);
    INSERT INTO t5 SELECT x-y, x+y FROM t1 WHERE x BETWEEN 10 AND 15
        ORDER BY x LIMIT 2;
    SELECT * FROM t5 ORDER BY x;
  


    DELETE FROM t5;
    INSERT INTO t5 SELECT x-y, x+y FROM t1 WHERE x BETWEEN 10 AND 15
        ORDER BY x DESC LIMIT 2;
    SELECT * FROM t5 ORDER BY x;
  


    DELETE FROM t5;
    INSERT INTO t5 SELECT x-y, x+y FROM t1 WHERE x ORDER BY x DESC LIMIT 31;
    SELECT * FROM t5 ORDER BY x LIMIT 2;
  


    SELECT * FROM t5 ORDER BY x DESC, y DESC LIMIT 2;
  


    DELETE FROM t5;
    INSERT INTO t5 SELECT a.x*100+b.x, a.y*100+b.y FROM t1 AS a, t1 AS b
                   ORDER BY 1, 2 LIMIT 1000;
    SELECT count(*), sum(x), sum(y), min(x), max(x), min(y), max(y) FROM t5;
  
