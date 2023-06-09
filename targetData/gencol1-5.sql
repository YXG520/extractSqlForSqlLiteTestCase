

  PRAGMA foreign_keys=ON;
  CREATE TABLE t1(
    gcb AS (b*1),
    a INTEGER PRIMARY KEY,
    gcc AS (c+0),
    b UNIQUE,
    gca AS (1*a+0),
    c UNIQUE
  ) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  INSERT INTO t1 VALUES(7,8,9);
  CREATE TABLE t1a(
    gcx AS (x+0) REFERENCES t1(a) ON DELETE CASCADE,
    id,
    x,
    gcid AS (1*id)
  );
  INSERT INTO t1a VALUES(1, 1);
  INSERT INTO t1a VALUES(2, 4);
  INSERT INTO t1a VALUES(3, 7);
  DELETE FROM t1 WHERE b=5;
  SELECT id,x,'|' FROM t1a ORDER BY id;

