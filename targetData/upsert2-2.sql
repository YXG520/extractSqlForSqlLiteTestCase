

  DROP TABLE t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b int, c DEFAULT 0);
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO t1(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;



  DELETE FROM t1;
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO main.t1 AS t2(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=t2.c+1 WHERE t2.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;



  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO t1 AS t2(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=t1.c+1 WHERE t1.b<excluded.b;



  DROP TABLE t1;
  CREATE TABLE t1(a INT PRIMARY KEY, b int, c DEFAULT 0) WITHOUT ROWID;
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO t1(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;

