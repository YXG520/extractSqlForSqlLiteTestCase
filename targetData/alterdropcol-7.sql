

  CREATE TABLE t1(a, b, c, PRIMARY KEY(a COLLATE nocase, a)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);



  ALTER TABLE t1 DROP COLUMN c;                



  SELECT sql FROM sqlite_schema;



  SELECT * FROM t1;

