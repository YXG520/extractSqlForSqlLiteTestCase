

  CREATE TABLE t0(x TEXT COLLATE rtrim);
  INSERT INTO t0(x) VALUES ('a'), ('b'), ('c');
  CREATE VIEW v0(y) AS SELECT DISTINCT x FROM t0;
  SELECT count(*) FROM t0, v0 WHERE x='b ';


S
Q


  CREATE TABLE t1(x INT COLLATE rtrim);
  INSERT INTO t1(x) VALUES ('a'), ('b'), ('c');
  CREATE VIEW v1(y) AS SELECT DISTINCT x FROM t1;
  SELECT count(*) FROM t1, v1 WHERE x='b ';


S
Q
