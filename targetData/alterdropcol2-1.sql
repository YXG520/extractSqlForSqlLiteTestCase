

  CREATE TABLE t1(c, b, a, PRIMARY KEY(b, a)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2, 3), (4, 5, 6);



  ALTER TABLE t1 DROP c;



  SELECT * FROM t1;



  SELECT sql FROM sqlite_schema;

