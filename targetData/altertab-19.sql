

  CREATE TABLE t1(x);
  CREATE VIEW t2 AS SELECT 1 FROM t1, (t1 AS a0, t1);
  ALTER TABLE t1 RENAME TO t3;
  SELECT sql FROM sqlite_master;



  INSERT INTO t3(x) VALUES(123);
  SELECT * FROM t2;



  INSERT INTO t3(x) VALUES('xyz');
  SELECT * FROM t2;

