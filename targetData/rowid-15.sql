

  PRAGMA reverse_unordered_selects=true;
  CREATE TABLE t1 (c0, c1);
  CREATE TABLE t2 (c0 INT UNIQUE);
  INSERT INTO t1(c0, c1) VALUES (0, 0), (0, NULL);
  INSERT INTO t2(c0) VALUES (1);



  SELECT t2.c0, t1.c1 FROM t1, t2 
  WHERE (t2.rowid <= 'a') OR (t1.c0 <= t2.c0) LIMIT 100



  SELECT 1, NULL INTERSECT SELECT * FROM (
      SELECT t2.c0, t1.c1 FROM t1, t2
      WHERE ((t2.rowid <= 'a')) OR (t1.c0 <= t2.c0) ORDER BY 'a' DESC LIMIT 100
  );

