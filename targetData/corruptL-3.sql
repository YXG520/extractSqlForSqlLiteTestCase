

  CREATE TABLE t1(a, b, c, d INTEGER PRIMARY KEY);
  CREATE TABLE t2(a, b, c, d INTEGER PRIMARY KEY);

  INSERT INTO t1(a, b, c, d) VALUES (1, 2, 3, 100), (4, 5, 6, 101);
  INSERT INTO t2(a, b, c, d) VALUES (1, 100, 3, 1000), (4, 101, 6, 1001);

  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t2a ON t2(a, b, c);

  PRAGMA writable_schema = 1;
  UPDATE sqlite_master SET sql = 'CREATE INDEX t2a ON t2(a)' WHERE name='t2a';



  INSERT INTO t1 SELECT * FROM t2;

