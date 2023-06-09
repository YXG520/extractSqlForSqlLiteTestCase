

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  CREATE INDEX t1b ON t1(b);
  INSERT INTO t1(a,b) VALUES(100, 356282677878746339);
  INSERT INTO t1(a,b) VALUES(50, 356282677878746339.0);
  INSERT INTO t1(a,b) VALUES(0, 356282677878746340);
  DELETE FROM t1 WHERE a=50;
  PRAGMA integrity_check;



  CREATE TABLE t2(a,b);
  INSERT INTO t2(a,b) VALUES('b', 1<<58),
      ('c', (1<<58)+1e-7), ('d', (1<<58)+1);
  SELECT a, b, typeof(b), '|' FROM t2 ORDER BY +a;



  SELECT x.a || CASE WHEN x.b==y.b THEN '==' ELSE '<>' END || y.a
    FROM t2 AS x, t2 AS y
   ORDER BY +x.a, +x.b;

