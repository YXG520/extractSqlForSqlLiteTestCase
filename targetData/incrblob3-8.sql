

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b);

  INSERT INTO t1 VALUES(4, 'hello');
  INSERT INTO aux.t1 VALUES(4, 'world');





