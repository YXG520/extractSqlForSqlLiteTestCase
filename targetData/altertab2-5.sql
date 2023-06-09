

  CREATE TABLE t2(a);
  CREATE TRIGGER r2 AFTER INSERT ON t2 WHEN new.a NOT NULL BEGIN
    SELECT a, sum(a) OVER w1 FROM t2
      WINDOW w1 AS (
        PARTITION BY a ORDER BY a 
        ROWS BETWEEN 2 PRECEDING AND 3 FOLLOWING
      ),
      w2 AS (
        PARTITION BY a
        ORDER BY rowid ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
      );
  END;



  INSERT INTO t2 VALUES(1);



  ALTER TABLE t2 RENAME TO t2x;
  SELECT sql FROM sqlite_master WHERE name = 'r2';



  ALTER TABLE t2x RENAME a TO aaaa;
  SELECT sql FROM sqlite_master WHERE name = 'r2';



  INSERT INTO t2x VALUES(1);

