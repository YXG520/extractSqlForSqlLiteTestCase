

  CREATE TABLE t1(a,b,c,d,PRIMARY KEY(a,b,c)) WITHOUT ROWID;
  INSERT INTO t1(a,b,c,d) VALUES
    (0,-2,2,3),
    (0,2,3,4),
    (0,5,8,10),
    (1,7,11,13);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1','10 3 2 1');
  ANALYZE sqlite_schema;
  PRAGMA reverse_unordered_selects(1);
  SELECT d FROM t1 WHERE 0=a AND b IN (-17,-4,-3,1,5,25,7798);

