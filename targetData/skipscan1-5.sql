

  CREATE TABLE t5(
    id INTEGER PRIMARY KEY,
    loc TEXT,
    lang INTEGER,
    utype INTEGER,
    xa INTEGER,
    xd INTEGER,
    xh INTEGER
  );
  CREATE INDEX t5i1 on t5(loc, xh, xa, utype, lang);
  CREATE INDEX t5i2 ON t5(xd,loc,utype,lang);
  EXPLAIN QUERY PLAN
    SELECT xh, loc FROM t5 WHERE loc >= 'M' AND loc < 'N';



  ANALYZE;
  DELETE FROM sqlite_stat1;
  DROP TABLE IF EXISTS sqlite_stat4;
  INSERT INTO sqlite_stat1 VALUES('t5','t5i1','2702931 3 2 2 2 2');
  INSERT INTO sqlite_stat1 VALUES('t5','t5i2','2702931 686 2 2 2');
  ANALYZE sqlite_master;



  EXPLAIN QUERY PLAN
    SELECT xh, loc FROM t5 WHERE loc >= 'M' AND loc < 'N';



  CREATE TABLE t1(a TEXT, UNIQUE(a,a,a));
  INSERT INTO t1 VALUES (hex(zeroblob(241))),(1),(2),(3);
  ANALYZE;
  SELECT max(a) FROM t1 WHERE a IN t1;

